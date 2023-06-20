import Dropzone from 'dropzone'
import * as fileProcess from './fileProcess'
// import jQuery from 'jquery'

var jq = jQuery.noConflict();
const csrfToken = document.querySelector('meta[name="csrf-token"]').content;

function makeWidget(div) {
    const resizers = div.querySelectorAll(".resizer");
    const minHeight = 200;
    const minWidth = 400;
    
    for (let resizer of resizers) {
        resizer.addEventListener("mousedown", function (e) {
            e.preventDefault();
            window.addEventListener("mousemove", resize);
            window.addEventListener("mouseup", stopResize);
                // Add click event listener to update the selected view
            selectedView = resizer.parentElement.parentElement;
    
            let startX = e.clientX;
            let startY = e.clientY;
            let startWidth = parseFloat(getComputedStyle(div, null).getPropertyValue("width").replace("px", ""));
            let startHeight = parseFloat(getComputedStyle(div, null).getPropertyValue("height").replace("px", ""));
            let startTop = div.offsetTop;
            let startLeft = div.offsetLeft;
            let viewRect = selectedView.getBoundingClientRect();
    
            function resize(e) {
                e.preventDefault();
            
                let dx = e.clientX - startX;
                let dy = e.clientY - startY;
                let newWidth, newHeight, newTop, newLeft;
            
                if (resizer.classList.contains("bottom-right")) {
                    newWidth = Math.max(minWidth, startWidth + dx);
                    newHeight = Math.max(minHeight, startHeight + dy);
                    newTop = startTop;
                    newLeft = startLeft;
                } else if (resizer.classList.contains("bottom-left")) {
                    newWidth = Math.max(minWidth, startWidth - dx);
                    newHeight = Math.max(minHeight, startHeight + dy);
                    newLeft = Math.min(startLeft + dx, startLeft + startWidth - minWidth);
                    newTop = startTop;
                } else if (resizer.classList.contains("top-right")) {
                    newWidth = Math.max(minWidth, startWidth + dx);
                    newHeight = Math.max(minHeight, startHeight - dy);
                    newTop = Math.min(startTop + dy, startTop + startHeight - minHeight);
                    newLeft = startLeft;
                } else {
                    newWidth = Math.max(minWidth, startWidth - dx);
                    newHeight = Math.max(minHeight, startHeight - dy);
                    newTop = Math.min(startTop + dy, startTop + startHeight - minHeight);
                    newLeft = Math.min(startLeft + dx, startLeft + startWidth - minWidth);
                }
                
                newTop = Math.max(0, Math.min(viewRect.height - newHeight, newTop));
                newLeft = Math.max(0, Math.min(viewRect.width - newWidth, newLeft));
                newWidth = Math.min(viewRect.width - newLeft, newWidth);
                newHeight = Math.min(viewRect.height - newTop, newHeight);
 
                const newRect = {
                    left: newLeft + viewRect.left,
                    right: newLeft + viewRect.left + newWidth,
                    top: newTop + viewRect.top,
                    bottom: newTop + viewRect.top + newHeight,
                };
            
                let collision = hasCollisionWithOthers(div, newRect);
            
                if (!collision) {
                    if (e.clientX >= viewRect.left && e.clientX <= viewRect.right) {
                        div.style.width = newWidth + "px";
                        div.style.left = newLeft + "px";
                    }
                    if (e.clientY >= viewRect.top && e.clientY <= viewRect.bottom) {
                        div.style.height = newHeight + "px";
                        div.style.top = newTop + "px";
                    }
                } else {
                    let xRect = Object.assign({}, newRect);
                    xRect.top = div.offsetTop + viewRect.top;
                    xRect.bottom = xRect.top + parseFloat(div.style.height);
            
                    let yRect = Object.assign({}, newRect);
                    yRect.left = div.offsetLeft + viewRect.left;
                    yRect.right = yRect.left + parseFloat(div.style.width);
            
                    let xCollision = hasCollisionWithOthers(div, xRect);
                    let yCollision = hasCollisionWithOthers(div, yRect);
            
                    if (!xCollision && e.clientX >= viewRect.left && e.clientX <= viewRect.right) {
                        div.style.width = newWidth + "px";
                        div.style.left = newLeft + "px";
                    }
            
                    if (!yCollision && e.clientY >= viewRect.top && e.clientY <= viewRect.bottom) {
                        div.style.height = newHeight + "px";
                        div.style.top = newTop + "px";
                    }
                }
            }
            
            
            
            function stopResize() {
                window.removeEventListener("mousemove", resize);
                window.removeEventListener("mouseup", stopResize);
                isDirty = true
            }
        });
    }
}


function hasCollisionWithOthers(element, newRect) {
    const resizableElements = Array.from(selectedView.querySelectorAll('.widget')).filter((el) => el !== element);
    for (const existingElement of resizableElements) {
        if (isRectanglesOverlapping(newRect, existingElement.getBoundingClientRect())) {
            return true;
        }
    }
    return false;
}

function dragElement(element, selectedView) {
    let offsetX, offsetY;

    element.onmousedown = onMouseDown;

    function onMouseDown(e) {
        e.preventDefault();
    
        // Check if the clicked element is a resizer
        if (e.target.classList.contains('resizer')) {
            return;
        }
    
        if (element.locked) return;
    
        offsetX = e.clientX - parseFloat(element.style.left || 0);
        offsetY = e.clientY - parseFloat(element.style.top || 0);
    
        document.onmousemove = onMouseMove;
        document.onmouseup = onMouseUp;
    }

    function onMouseMove(e) {
        e.preventDefault();

        const newX = e.clientX - offsetX;
        const newY = e.clientY - offsetY;
    
        const viewRect = selectedView.getBoundingClientRect();
        const elementRect = element.getBoundingClientRect();
    
        let finalX = Math.min(Math.max(newX, 0), viewRect.width - elementRect.width);
        let finalY = Math.min(Math.max(newY, 0), viewRect.height - elementRect.height);
    
        const newPosition = findNearestNonOverlappingPosition(element, finalX, finalY, selectedView);
    
        element.style.left = newPosition.x + 'px';
        element.style.top = newPosition.y + 'px';
    }


    function onMouseUp() {
        document.onmousemove = null;
        document.onmouseup = null;
        isDirty = true
    }
}

function findNearestNonOverlappingPosition(element, newX, newY, selectedView, stepSize = 5) {
    const viewRect = selectedView.getBoundingClientRect();
    const elementRect = element.getBoundingClientRect();
    const resizableElements = Array.from(selectedView.querySelectorAll('.widget')).filter((el) => el !== element);

    const potentialPositions = [];

    for (let x = 0; x <= viewRect.width - elementRect.width; x += stepSize) {
        for (let y = 0; y <= viewRect.height - elementRect.height; y += stepSize) {
            const distX = Math.abs(x - newX);
            const distY = Math.abs(y - newY);
            const dist = Math.sqrt(distX * distX + distY * distY);
            potentialPositions.push({ x, y, dist });
        }
    }

    potentialPositions.sort((a, b) => a.dist - b.dist);

    for (const position of potentialPositions) {
        const proposedRect = {
            left: position.x + viewRect.left,
            right: position.x + viewRect.left + elementRect.width,
            top: position.y + viewRect.top,
            bottom: position.y + viewRect.top + elementRect.height,
        };

        let hasOverlap = false;

        for (const existingElement of resizableElements) {
            const existingElementRect = existingElement.getBoundingClientRect();
            if (isRectanglesOverlapping(proposedRect, existingElementRect)) {
                hasOverlap = true;
                break;
            }
        }

        if (!hasOverlap) {
            return { x: position.x, y: position.y };
        }
    }

    return { x: parseFloat(element.style.left || 0), y: parseFloat(element.style.top || 0) };
}

//Globales necessaire a newWidget
let idWidget = 0
let idDropzone = null

function newWidget(widgetObj = null, targetView = selectedView, file = null) {
    //Création du widget et ajout de sa class
    const widget = document.createElement('div')
    widget.classList.add('widget')
    //Definition de l'id pour assignation dynamique des class sur les diferents elements
    var id = idWidget
    //Détermine le cas de figure présent (creation de widget vide ou avec un fichier, chargement des widgets depuis la base de donnée)
    if(widgetObj){
        if (widgetObj.type != 'click') {
            //Definitions des attributs au chargement des widgets depuis la BDD
            widget.setAttribute('id', widgetObj.id)
            widget.style.left = widgetObj.left + 'px'
            widget.style.top = widgetObj.top + 'px'
            widget.style.width = widgetObj.width + 'px'
            widget.style.height = widgetObj.height + 'px'
            if(idWidget <= +widgetObj.id.replace('widget_','')){
                idWidget = +widgetObj.id.replace('widget_','')
                id = idWidget
                idWidget += 1
            }else{
                id = +widgetObj.id.replace('widget_','')
            }
            idDropzone = widgetObj.id
        } else {
            //Definition des attribut pour nouveau widget vide
            idDropzone = 'widget_' + idWidget 
            widget.setAttribute('id', idDropzone)
            idWidget += 1
        }
    }else{
        //Definition des attribut pour nouveau widget vide
        idDropzone = 'widget_' + idWidget 
        widget.setAttribute('id', idDropzone)
        idWidget += 1
    }
    //Definition du contenu par default des widgets 
    widget.innerHTML = `
        <div class="resizer top-left"></div>
        <div class="resizer top-right"></div>
        <div class="resizer bottom-left"></div>
        <div class="resizer bottom-right"></div>
        <div class="deleteW" id="delete_w`+id+`"><img src="../images/TitleDelW.png"></img></div>
        <div class="lock" id="lock_w`+id+`"><img src="../images/TitleLock.png"></img></div>
        `

    // Ajoute l'event listener au bouton delete 
    const removeButton = widget.querySelector('#delete_w'+id)
    removeButton.addEventListener('click', () => removeWidget(widget))
    // Ajoute l'event listener au bouton lock 
    const lockButton = widget.querySelector('#lock_w'+id)
    lockButton.addEventListener('click', () => toggleLock(widget))
    // Ajoute le widget a la view
    if (targetView) {
        targetView.appendChild(widget)
    } else {
        alert('No view is selected.')
    }

    // Ajoute les elements et evenements utilisées pour resize le widget
    makeWidget(widget)

    // Ajoute les evenements necessaire pour deplacer le widget
    dragElement(widget, targetView)

    // Positionnement par default
    if (!widgetObj) {
        widget.style.width = '400px';
        widget.style.height = '200px';
        widget.style.left = '0px'
        widget.style.top = '0px'
    }

    // Definis les bordures du widget
    const topLeftCornerRect = {
        left:  +widget.offsetLeft,
        right: +targetView.offsetLeft + +widget.offsetWidth,
        top:  +widget.offsetTop,
        bottom: +targetView.offsetTop + +widget.offsetHeight,
    };
    console.log(topLeftCornerRect)

    // Verifie que le widget ne se supperpose pas aux autres et trouve la meilleur position pour l'ajouter
    if (hasCollisionWithOthers(widget, topLeftCornerRect)) {
        const newPosition = findNonOverlappingPosition(widget, selectedView)
        // Si aucune position ne peut être trouvée renvois une alerte
        if (newPosition === null) {
            alert('Pas assez de place pour un nouveau widget')
            selectedView.removeChild(widget)
            return;
        }
        console.log(newPosition)

        widget.style.left = newPosition.left + 'px'
        widget.style.top = newPosition.top + 'px'
    } else {
        
        // Par default positionne le widget en haut a gauche
        if (!widgetObj) {
            widget.style.left = '0px'
            widget.style.top = '0px'
        }
    }

    // Definis le status Lock 
    toggleLock(widget)
    toggleLock(widget)

    //Récupère le token csrf
    let csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    //Definis les paramètres de la dropzone
    let dropzone = new Dropzone('#' + idDropzone, {
        url: '/upload', // definis la route
        maxFilesize: 5, // definis la taille max des fichiers
        acceptedFiles: ".jpeg,.jpg,.png,.gif,.txt,.csv", // definis les types de fichiers
        clickable: false, // Empèche l'ouverture de la fenètre de dialogue sur simple click
        headers: {'X-CSRF-TOKEN': csrfToken}, // ajoute le token dans le header
        disablePreviews: true, // désactive les preview 
    });
    //Ajoute l'évènement de sauvegarde au telechargement du fichier
    dropzone.on("success", function(response) {
        console.log('Fichier sauvegardé')
        saveWidget(widget,targetView.id,response.xhr.response)
    });

    //Ajoute les évènements au survol 
    fileProcess.event(dropzone)
    //Envois le fichier pour être traité en fonction de son type
    fileProcess.input(dropzone,widget)
    if(file){
        dropzone.addFile(file)
        //fileProcess.selector(widget,file)
    }

    return widget
}

function removeWidget(widget){
    //Supprime l'element de la page html
    widget.parentElement.removeChild(widget);
    //Récupère les informations necessaires a la suppression
    var w = {
        id: widget.id,
        left: widget.offsetLeft,
        top: widget.offsetTop,
        width: widget.offsetWidth,
        height: widget.offsetHeight,
    }
    //Envois une requète au serveur pour supprimer le widget de la BDD
    jq.ajax({
        url: '/removeWidget',
        method: 'DELETE',
        data: {
            widget: w,
            project: project,
            _token: csrfToken
        },
    });
    //Change l'éat de isDirty pour lancer la sauvegarde automatique
    isDirty = true
}

function saveWidget(widget,view,idFile){
    //Definis les variables pour la sauvegarde des widgets
    var v = view
    var w = {
        id: widget.id,
        left: widget.offsetLeft,
        top: widget.offsetTop,
        width: widget.offsetWidth,
        height: widget.offsetHeight,
        type: widget.getAttribute('data-type'),
    }
    //Envois la requète au serveur pour crée le widget
    jq.ajax({
        url: '/makeWidget',
        method: 'POST',
        data: {
            view: v,
            widget: w,
            project: project,
            file: idFile,
            _token: csrfToken
        },
        success: function(response) {
            console.log('ID returned: ', response.id);
            console.log(idFile)
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log(textStatus, errorThrown);
        }
    });
}

function loadWidgets(widgetObj) {
    //Récupère l'element view
    var viewElement = document.getElementById(widgetObj.view);
    selectedView = viewElement
    //Appel la fonction newWidget pour ajouter un widget a la view
    var widget = newWidget(widgetObj, viewElement)
    //Selection de l'operation a effectuer selon le contenu du widget
    switch (widgetObj.type){
        case "image/png":
            fileProcess.image(widget,'url(../images/'+widgetObj.filename+')')
            break;
        case "image/jpg":
            fileProcess.image(widget,'url(../images/'+widgetObj.filename+')')
            break;
        case "image/jpeg":
            fileProcess.image(widget,'url(../images/'+widgetObj.filename+')')
            break;
        case "image/gif":
            fileProcess.image(widget,'url(../images/'+widgetObj.filename+')')
            break;
        case "text/plain":
            fileProcess.text(widget,null,'../texte/'+widgetObj.filename)
            break;
        case "text/csv":
            break;
    }
}

function toggleLock(element) {
    //Definis l'etat (Lock / Unlock) du widget 
    element.locked = !element.locked; 
    //Récupère l'id original du widget
    var id = +element.id.replace('widget_','')
    //Récupère le bouton lock du widget grace a son id original
    const lockButton = element.querySelector("#lock_w"+id);
    //change le visuel en fonction de l'etat
    if(element.locked == true){
        lockButton.children[0].src = "../images/TitleUnlock.png"
    }else{
        lockButton.children[0].src = "../images/TitleLock.png"
    }

    // Montre ou cache les resizer selon le cas de figure
    const resizers = element.querySelectorAll(".resizer");
    resizers.forEach((resizer) => {
        resizer.style.display = element.locked ? "none" : "block";
    });
}

function isRectanglesOverlapping(rect1, rect2) {
    //compare deux rectangles pour voir si ils se supperposent
    return (
        rect1.left < rect2.right &&
        rect1.right > rect2.left &&
        rect1.top < rect2.bottom &&
        rect1.bottom > rect2.top
    );
}

function findNonOverlappingPosition(element, selectedView) {
    // Récupère l'ensemble des elements necessaire pour trouver une place libre suffisament grande pour l'element en paramètre
    const elementRect = element.getBoundingClientRect();
    const viewRect = selectedView.getBoundingClientRect();
    const resizableElements = Array.from(selectedView.querySelectorAll('.widget'));
    console.log(resizableElements)
    // Ajoute aux element resizable le resizer de la view
    const resizerView = selectedView.querySelector('.resizerView');
    if (resizerView) {
        resizableElements.push(resizerView);
    }

    // Definis la position par default
    let newPosition = {
        left: 0,
        top: 0,
    };

    // Parcours l'ensemble des elements en fonction de celui envoyé pour determiner une position sans supperposition
    for (let y = 0; y <= viewRect.height - elementRect.height; y += 5) {
        for (let x = 0; x <= viewRect.width - elementRect.width; x += 5) {
            newPosition.left = x;
            newPosition.top = y;
            let newPositionRect = {
                left: newPosition.left + viewRect.left,
                right: newPosition.left + viewRect.left + elementRect.width,
                top: newPosition.top + viewRect.top,
                bottom: newPosition.top + viewRect.top + elementRect.height,
            };
            let hasOverlap = false;

            for (const existingElement of resizableElements) {
                if (isRectanglesOverlapping(newPositionRect, existingElement.getBoundingClientRect())) {
                    hasOverlap = true;
                    break;
                }
            }

            if (!hasOverlap) {
                return newPosition;
            }
        }
    }

    return null;
}

function growPageOnScroll() {
    //récupère les information sur la taille de la page
    const page = document.querySelector(".page");
    const pageHeight = parseInt(getComputedStyle(page).getPropertyValue("height"));

    if (
        page.offsetHeight - window.scrollY <= window.innerHeight
    ) {
      // augmente la taille de la page de 100vh quand l'utilisateur approche de la fin de la page
        page.style.height = pageHeight + window.innerHeight + "px";
    }}

  // Ajoute l'évènement pour agrandir la page
window.addEventListener("scroll", growPageOnScroll);

// Definis les globales necessaire pour suivre le mouvement de la souris
let startY;
let startHeight;

function onMouseMove(e) {
    const view = resizerView.parentElement;
    const newHeight = startHeight + e.clientY - startY;
    view.style.height = newHeight + 'px';
}

function onMouseUp() {
    window.removeEventListener('mousemove', onMouseMove);
    window.removeEventListener('mouseup', onMouseUp);
    isDirty = true
}


function createResizableView() {
    const view = document.createElement('div');
    view.className = 'view';
    view.dataset.locked = 'true'

    const resizer = document.createElement('div');
    resizer.className = 'resizerView';
    view.appendChild(resizer);

    const onMouseMove = (startY, startHeight, startScrollTop) => (e) => {
        const currentScrollTop = document.documentElement.scrollTop;
        const scrollDifference = currentScrollTop - startScrollTop;
        const newHeight = startHeight + (e.clientY - startY) + scrollDifference;
    
        const widgets = Array.from(resizer.parentElement.querySelectorAll('.widget'));
        const minHeight = Math.max(...widgets.map(w => w.offsetTop + w.offsetHeight));
    
        if (newHeight >= minHeight) {
            resizer.parentElement.style.height = newHeight + 'px';
        } else {
            resizer.parentElement.style.height = minHeight + 'px';
        }
    };
    
    const onMouseUp = (onMouseMove) => () => {
        window.removeEventListener('mousemove', onMouseMove);
        window.removeEventListener('mouseup', onMouseUp);
        isDirty = true
    };
    
    resizer.addEventListener('mousedown', (e) => {
        if (resizer.parentElement.dataset.locked === 'true') {
            const startY = e.clientY;
            const scrollTop = document.documentElement.scrollTop;
            const startHeight = parseInt(document.defaultView.getComputedStyle(resizer.parentElement).height, 10);
            const boundOnMouseMove = onMouseMove(startY, startHeight, scrollTop);
            const boundOnMouseUp = onMouseUp(boundOnMouseMove);
            window.addEventListener('mousemove', boundOnMouseMove);
            window.addEventListener('mouseup', boundOnMouseUp);
        }
    });

    view.addEventListener('click', (e) => {
        if (e.target === view) {
            selectView(view);
        }
    });

    return view;
}

let selectedView = null;


export function newView(viewObj = null) {
    let viewId = 0
    if (viewObj) {
        if (viewObj.type != 'click') {
            idView = +viewObj.id.replace('view_','')
        }
    }
    const page = document.querySelector('.page');
    const view = createResizableView();
    const title = document.createElement('div');
    title.className = 'view-title';
    title.innerHTML = `
    <div class="user"><img src="../images/TitleUser.png"></img></div>
    <div class="title-filler-l" id="tfl_`+idView+`"><img src="../images/TitleFillerLeft.png"></img></div>
    <div class="title">
        <textarea class="title_`+idView+`" id="title_`+idView+`"></textarea>
    </div>
    <div class="title-filler-r" id="tfr_`+idView+`"><img src="../images/TitleFillerRight.png"></img></div>
    <div class="delete" id="delete_`+idView+`"><img src="../images/TitleDel.png"></img></div>
    <div class="lock" id="lock_`+idView+`"><img src="../images/TitleLock.png"></img></div>
    `;

    page.appendChild(title);
    page.appendChild(view);

    const removeButton = title.querySelector('#delete_'+idView);
    removeButton.addEventListener('click', () => removeView(view,title));

    // Find the lock button inside the title element
    const lockBtn = title.querySelector('#lock_'+idView);

    // Add a click event listener to the lock button
    lockBtn.addEventListener('click', () => {
        // Toggle the locked state
        if (view.dataset.locked === 'false') {
            view.dataset.locked = 'true';
            lockBtn.children[0].src = "../images/TitleLock.png"
        } else {
            view.dataset.locked = 'false'; 
            lockBtn.children[0].src = "../images/TitleUnlock.png"
        }
    });

    // Retrieve the textarea using its id
    let textarea = document.getElementById('title_'+idView)
    let fillerL = document.getElementById('tfl_'+idView)
    let fillerR = document.getElementById('tfr_'+idView)
    let intervalId 

    function titleEnter(){
        textarea.parentElement.classList.add('title-hover')
        fillerL.classList.add('title-hover')
        fillerR.classList.add('title-hover')
    }

    function titleLeave(){
        textarea.parentElement.classList.remove('title-hover')
        fillerL.classList.remove('title-hover')
        fillerR.classList.remove('title-hover')
    }
    
    textarea.addEventListener('mouseenter', titleEnter)
    textarea.addEventListener('mouseleave', titleLeave)
    fillerL.addEventListener('mouseenter', titleEnter)
    fillerL.addEventListener('mouseleave', titleLeave)
    fillerR.addEventListener('mouseenter', titleEnter)
    fillerR.addEventListener('mouseleave', titleLeave)

    // Attach focus and blur event listeners to the textarea
    textarea.addEventListener('focus', function() {
        var previous = ''
        intervalId = setInterval(function() {
            if(previous != textarea.value){
                previous = textarea.value
                saveProject()
                isDirty = false
            }
        }, 5000); 
    });

    textarea.addEventListener('blur', function() {
        clearInterval(intervalId);
        saveProject()
        isDirty = false
    });

    if (viewObj) {
        if (viewObj.type != 'click') {
            view.style.height = viewObj.height + 'px';
            view.style.left = '0px';
            view.style.width = '100%';
            view.setAttribute('id', viewObj.id);
            viewId = viewObj.id
            document.querySelector('.title_'+idView).innerText = viewObj.title
            idView += 1;

        } else {
            view.setAttribute('id', 'view_' + idView);
            viewId = 'view_' + idView
            idView += 1;
            makeView(view)
        }
    }else{
        view.setAttribute('id', 'view_' + idView);
        viewId = 'view_' + idView
        idView += 1
        makeView(view)
    }

    let csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    let dropzone = new Dropzone('#' + viewId, {
        url: '/upload', 
        maxFilesize: 5,
        acceptedFiles: ".jpeg,.jpg,.png,.gif,.txt,.csv,.rtf",
        clickable: false, 
        autoDiscover: false, 
        headers: {'X-CSRF-TOKEN': csrfToken},
        disablePreviews: true,
        autoProcessQueue: false
    });

    fileProcess.event(dropzone)

    dropzone.on("addedfile", function(file) {
        newWidget(null,view,file)
    })

    if (selectedView === null) {
        selectedView = view;
        view.classList.add('selected');
    }
}

function removeView(view,title){
    view.parentElement.removeChild(view);
    title.parentElement.removeChild(title);
    var w = {
        id: view.id,
        top: view.offsetTop,
        height: view.offsetHeight,
    }
    jq.ajax({
        url: '/removeView',
        method: 'DELETE',
        data: {
            view: w,
            project: project,
            _token: csrfToken
        },
    });
    isDirty = true
}

function makeView(view){
    var v = {
            id: view.id,
            top: view.offsetTop,
            height: view.offsetHeight
        }

    jq.ajax({
        url: '/makeView',
        method: 'POST',
        data: {
            view: v,
            project: project,
            _token: csrfToken
        },
        success: function(response) {
            console.log('ID returned: ', response.id);
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log(textStatus, errorThrown);
        }
    });
}

const page = document.querySelector('.page');

export function selectView(view) {
    if (selectedView) {
        selectedView.classList.remove('selected');
    }
    selectedView = view;
    view.classList.add('selected');
}

function extractSizeAndPosition() {
    const views = document.querySelectorAll(".view");
    var nom = document.querySelector('.cf-input').value
    var description = document.querySelector('.cf-description').value
    var miniature = document.querySelector('.cf-dropzone').imgID

    const sizeAndPosition = {
        project: project,
        nom: nom,
        description: description,
        miniature: miniature,
        views:{}
    };

    
    for (const view of views) {
        console.log(view)
        var tID = view.id.replace('view_','')
        var t = document.querySelector('.title_'+tID)
        const viewId = view.getAttribute("id");
        sizeAndPosition.views[viewId] = {
            title: t.value,
            id: viewId,
            top: view.offsetTop,
            height: view.offsetHeight,
            widgets: [],
        };

        const widgets = view.querySelectorAll(".widget");
        for (const widget of widgets) {
            const widgetId = widget.getAttribute("id");
            sizeAndPosition.views[viewId].widgets.push({
                id: widgetId,
                left: widget.offsetLeft,
                top: widget.offsetTop,
                width: widget.offsetWidth,
                height: widget.offsetHeight,
                type: widget.getAttribute('data-type'),
            });
        }
    }

    return sizeAndPosition;
}

export function saveProject(){
    var sizeAndPosition = extractSizeAndPosition();
    var serializedData = JSON.stringify(sizeAndPosition);

    // Get CSRF token from the meta tag
    var csrfToken = document.querySelector('meta[name="csrf-token"]').content;
    
    // Send JSON data to the controller
    fetch('/projectSave', {
        method: 'POST',
        headers: {
        'Content-Type': 'application/json',
        'X-CSRF-TOKEN': csrfToken
        },
        body: serializedData
    })
    .then(response => {
        // Handle the response from the controller
        console.log(response);
    })
    .catch(error => {
        // Handle any errors that occur during the request
        console.error(error);
    });
}

function loadProject(){
    // Handle the response from the controller
    var firstObject = data[0];
    delete data[0];
    document.querySelector('.cf-input').value = firstObject['nom']
    document.querySelector('.cf-description').value = firstObject['description']
    
    var dz = document.querySelector('.cf-dropzone') 
    var urlM = '../images/'+firstObject['URLminiature']
    dz.style.backgroundImage = 'url('+urlM+')' 
    dz.style.backgroundSize = 'cover'
    dz.style.backgroundPosition = 'center'
    dz.imgID = firstObject['miniature']
    console.log(dz)

    for(let view in data){
        newView(data[view])
        for (let i = 0; i < data[view].widgets.length; i++) {
            loadWidgets(data[view].widgets[i])
        }
    }
}

export function saveFile(content){
    isDirty = true
}

if(init === false){
    let csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    let dropzone = new Dropzone('#cf-dropzone', {
        url: '/upload', 
        maxFilesize: 5,
        acceptedFiles: ".jpeg,.jpg,.png,.gif,.txt,.csv,.rtf",
        clickable: false, 
        autoDiscover: false, 
        headers: {'X-CSRF-TOKEN': csrfToken},
        disablePreviews: true,
        autoProcessQueue: true
    });

    dropzone.on("success", function (response) {
        var dz = document.querySelector('#cf-dropzone')
        dz.imgID = response.xhr.response
        console.log(dz.imgID)
    });

    fileProcess.event(dropzone)
    var widget = document.querySelector('#cf-dropzone')
    fileProcess.input(dropzone,widget)


    if(data !== null){
        loadProject()       
    }
    else{
        newView()
    }
    init = true
}

setInterval(() => {
    if (isDirty) {
        saveProject();
        isDirty = false
    }
}, 5000);

window.addEventListener('beforeunload', function (e) {
    if (isDirty) { 
        e.preventDefault();
        e.returnValue = '';
    }
});


document.getElementById('newWidgetButton').onclick = newWidget;
document.getElementById('newViewButton').onclick = newView;
document.getElementById('saveProjectButton').onclick = saveProject;
document.getElementById('loadProjectButton').onclick = loadProject;