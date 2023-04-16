function makeResizableDiv(div) {
    const resizers = div.querySelectorAll(".resizer");
    const minHeight = 50;
    const minWidth = 200;
    
    for (let resizer of resizers) {
        resizer.addEventListener("mousedown", function (e) {
            e.preventDefault();
            window.addEventListener("mousemove", resize);
            window.addEventListener("mouseup", stopResize);
    
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

    // If no non-overlapping position is found, return the original position
    return { x: parseFloat(element.style.left || 0), y: parseFloat(element.style.top || 0) };
}

let idWidget = 0

function newWidget() {
    const resizableDiv = document.createElement('div');
    resizableDiv.classList.add('widget');
    resizableDiv.setAttribute('id', 'widget_'+ idWidget)
    idWidget += 1
    resizableDiv.innerHTML = `
        <button class="lock-btn">Lock</button>
        <button class="remove-btn">Remove</button>
        <div class="resizer top-left"></div>
        <div class="resizer top-right"></div>
        <div class="resizer bottom-left"></div>
        <div class="resizer bottom-right"></div>
    `;

    // Apply the remove functionality to the new element.
    const removeButton = resizableDiv.querySelector('.remove-btn');
    removeButton.addEventListener('click', () => removeDiv(resizableDiv));

    // Append the resizableDiv to the body or a container of your choice.
    if (selectedView) {
        selectedView.appendChild(resizableDiv);
    } else {
        alert('No view is selected.');
    }

    // Apply the resizable functionality to the new element.
    makeResizableDiv(resizableDiv);

    // Apply the drag functionality to the new element.
    dragElement(resizableDiv, selectedView);

    resizableDiv.style.left = '0px';
    resizableDiv.style.top = '0px';

    const topLeftCornerRect = {
        left: selectedView.getBoundingClientRect().left,
        right: selectedView.getBoundingClientRect().left + resizableDiv.getBoundingClientRect().width,
        top: selectedView.getBoundingClientRect().top,
        bottom: selectedView.getBoundingClientRect().top + resizableDiv.getBoundingClientRect().height,
    };

    if (hasCollisionWithOthers(resizableDiv, topLeftCornerRect)) {
        const newPosition = findNonOverlappingPosition(resizableDiv, selectedView);

        if (newPosition === null) {
            alert('There is no space for another div.');
            selectedView.removeChild(resizableDiv);
            return;
        }

        resizableDiv.style.left = newPosition.left + 'px';
        resizableDiv.style.top = newPosition.top + 'px';
    } else {
        resizableDiv.style.left = '0px';
        resizableDiv.style.top = '0px';
    }


    // Set the initial lock state.
    toggleLock(resizableDiv);
    toggleLock(resizableDiv);

    // Add the lock button event listener
    const lockButton = resizableDiv.querySelector('.lock-btn');
    lockButton.addEventListener('click', () => toggleLock(resizableDiv));

}


function toggleLock(element) {
    element.locked = !element.locked; // Toggle the locked state
    const lockButton = element.querySelector(".lock-btn");
    lockButton.innerText = element.locked ? "Unlock" : "Lock";

    // Show or hide resizers based on the locked state
    const resizers = element.querySelectorAll(".resizer");
    resizers.forEach((resizer) => {
        resizer.style.display = element.locked ? "none" : "block";
    });
}

// element.querySelector

function isRectanglesOverlapping(rect1, rect2) {
    return (
        rect1.left < rect2.right &&
        rect1.right > rect2.left &&
        rect1.top < rect2.bottom &&
        rect1.bottom > rect2.top
    );
}

function findNonOverlappingPosition(element, selectedView) {
    const elementRect = element.getBoundingClientRect();
    const viewRect = selectedView.getBoundingClientRect();
    const resizableElements = Array.from(selectedView.querySelectorAll('.widget'));

    // Add the resizer of the selectedView to the resizableElements array
    const resizerView = selectedView.querySelector('.resizerView');
    if (resizerView) {
        resizableElements.push(resizerView);
    }

    let newPosition = {
        left: 0,
        top: 0,
    };

    for (let y = 0; y <= viewRect.height - elementRect.height; y += 1) {
        for (let x = 0; x <= viewRect.width - elementRect.width; x += 1) {
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




function removeDiv(element) {
    element.parentElement.removeChild(element);
}


function growPageOnScroll() {

    const page = document.querySelector(".page");
    const pageHeight = parseInt(getComputedStyle(page).getPropertyValue("height"));

    if (
        page.offsetHeight - window.scrollY <= window.innerHeight
    ) {
      // Increase the height of the page by 100vh when the user scrolls to the bottom
        page.style.height = pageHeight + window.innerHeight + "px";
    }}

  // Attach the growPageOnScroll function to the window's scroll event
window.addEventListener("scroll", growPageOnScroll);

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
}


function createResizableView() {
    const view = document.createElement('div');
    view.className = 'view';

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
    };
    
    resizer.addEventListener('mousedown', (e) => {
        const startY = e.clientY;
        const scrollTop = document.documentElement.scrollTop;
        const startHeight = parseInt(document.defaultView.getComputedStyle(resizer.parentElement).height, 10);
        const boundOnMouseMove = onMouseMove(startY, startHeight, scrollTop);
        const boundOnMouseUp = onMouseUp(boundOnMouseMove);
        window.addEventListener('mousemove', boundOnMouseMove);
        window.addEventListener('mouseup', boundOnMouseUp);
    });

    view.addEventListener('click', (e) => {
        if (e.target === view) {
            selectView(view);
        }
    });

    return view;
}

let selectedView = null;
let idView = 0;

function newView() {
    const page = document.querySelector('.page');
    const view = createResizableView();
    view.setAttribute('id', 'view_'+idView)
    idView += 1
    page.appendChild(view);

    if (selectedView === null) {
        selectedView = view;
        view.classList.add('selected');
    }
}
const page = document.querySelector('.page');

function selectView(view) {
    if (selectedView) {
        selectedView.classList.remove('selected');
    }
    selectedView = view;
    view.classList.add('selected');
}

newView()

function extractSizeAndPosition() {
    const views = document.querySelectorAll(".view");
    const sizeAndPosition = {};

    for (const view of views) {
        const viewId = view.getAttribute("id");
        sizeAndPosition[viewId] = {
            id: viewId,
            top: view.offsetTop,
            height: view.offsetHeight,
            widgets: [],
        };

        const widgets = view.querySelectorAll(".widget");
        for (const widget of widgets) {
            const widgetId = widget.getAttribute("id");
            sizeAndPosition[viewId].widgets.push({
                id: widgetId,
                left: widget.offsetLeft,
                top: widget.offsetTop,
                width: widget.offsetWidth,
                height: widget.offsetHeight,
            });
        }
    }

    return sizeAndPosition;
}

function saveProject(){
    const sizeAndPosition = extractSizeAndPosition();
    const serializedData = JSON.stringify(sizeAndPosition);
    console.log(serializedData);

    // Get CSRF token from the meta tag
    const csrfToken = document.querySelector('meta[name="csrf-token"]').content;

    
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