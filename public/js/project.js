function hello(){
    console.log('hello')
}

/*Make resizable div by Hung Nguyen*/
function makeResizableDiv(element) {
    const resizers = element.querySelectorAll('.resizer');
    const minimum_size = 20;
    let original_width = 0;
    let original_height = 0;
    let original_x = 0;
    let original_y = 0;
    let original_mouse_x = 0;
    let original_mouse_y = 0;

    for (let i = 0; i < resizers.length; i++) {
        const currentResizer = resizers[i];
        currentResizer.addEventListener('mousedown', function (e) {
            e.preventDefault();
            original_width = parseFloat(getComputedStyle(element, null).getPropertyValue('width').replace('px', ''));
            original_height = parseFloat(getComputedStyle(element, null).getPropertyValue('height').replace('px', ''));
            original_x = parseFloat(element.style.left || 0);
            original_y = parseFloat(element.style.top || 0);
            original_mouse_x = e.pageX;
            original_mouse_y = e.pageY;
            window.addEventListener('mousemove', resize);
            window.addEventListener('mouseup', stopResize);
        });
        function resize(e) {
            const widthOffset = e.pageX - original_mouse_x;
            const heightOffset = e.pageY - original_mouse_y;
        
            const container = document.querySelector('.page');
            const containerRect = container.getBoundingClientRect();
            const elmntRect = element.getBoundingClientRect();
        
            const elmntTop = parseFloat(element.style.top || 0);
            const elmntLeft = parseFloat(element.style.left || 0);
        
            if (currentResizer.classList.contains('bottom-right')) {
                const newWidth = Math.max(original_width + widthOffset, minimum_size);
                const newHeight = Math.max(original_height + heightOffset, minimum_size);
        
                if (elmntLeft + newWidth <= containerRect.right) {
                    element.style.width = newWidth + 'px';
                }
                if (elmntTop + newHeight <= containerRect.bottom) {
                    element.style.height = newHeight + 'px';
                }
            } else if (currentResizer.classList.contains('bottom-left')) {
                const newWidth = Math.max(original_width - widthOffset, minimum_size);
                const newHeight = Math.max(original_height + heightOffset, minimum_size);
        
                if (elmntLeft + (original_width - newWidth) >= containerRect.left) {
                    element.style.width = newWidth + 'px';
                    element.style.left = original_x + (original_width - newWidth) + 'px';
                }
                if (elmntTop + newHeight <= containerRect.bottom) {
                    element.style.height = newHeight + 'px';
                }
            } else if (currentResizer.classList.contains('top-right')) {
                const newWidth = Math.max(original_width + widthOffset, minimum_size);
                const newHeight = Math.max(original_height - heightOffset, minimum_size);
        
                if (elmntLeft + newWidth <= containerRect.right) {
                    element.style.width = newWidth + 'px';
                }
                if (elmntTop + (original_height - newHeight) >= containerRect.top) {
                    element.style.height = newHeight + 'px';
                    element.style.top = original_y + (original_height - newHeight) + 'px';
                }
            } else { // top-left
                const newWidth = Math.max(original_width - widthOffset, minimum_size);
                const newHeight = Math.max(original_height - heightOffset, minimum_size);
        
                if (elmntLeft + (original_width - newWidth) >= containerRect.left) {
                    element.style.width = newWidth + 'px';
                    element.style.left = original_x + (original_width - newWidth) + 'px';
                }
                if (elmntTop + (original_height - newHeight) >= containerRect.top) {
                    element.style.height = newHeight + 'px';
                    element.style.top = original_y + (original_height - newHeight) + 'px';
                }
            }
        }

        function stopResize() {
            window.removeEventListener('mousemove', resize)
        }
    }
}


function resetDrag(){
    this.removeEventListener('mouseleave', resetDrag)
    document.addEventListener('mousedown', selectDrag);
}

function selectDrag(event){
    try {
        let drag = document.getElementById(event.target.parentElement.id)
        dragElement(drag);
        document.removeEventListener('mousedown', selectDrag);
        drag.addEventListener('mouseleave', resetDrag)
    }catch (error) {
        
    }
}

function dragElement(elmnt) {
    var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;

    elmnt.onmousedown = dragMouseDown;

    function dragMouseDown(e) {
        if (e.target.classList.contains("resizer")) {
            return; // Ignore mousedown on resizers
        }
        e = e || window.event;
        e.preventDefault();
        // Get the mouse cursor position at startup:
        pos3 = e.clientX;
        pos4 = e.clientY;
        document.onmouseup = closeDragElement;
        // Call a function whenever the cursor moves:
        document.onmousemove = elementDrag;
    }

    function elementDrag(e) {
        e = e || window.event;
        e.preventDefault();
        // Calculate the new cursor position:
        pos1 = pos3 - e.clientX;
        pos2 = pos4 - e.clientY;
        pos3 = e.clientX;
        pos4 = e.clientY;
        // Set the element's new position within container boundaries:
        const container = document.querySelector('.page');
        const containerRect = container.getBoundingClientRect();
        const elmntRect = elmnt.getBoundingClientRect();

        const newTop = elmnt.offsetTop - pos2;
        const newLeft = elmnt.offsetLeft - pos1;
        
        if (newTop > containerRect.top && newTop + elmntRect.height < containerRect.bottom) {
            elmnt.style.top = newTop + "px";
        }
        if (newLeft > containerRect.left && newLeft + elmntRect.width < containerRect.right) {
            elmnt.style.left = newLeft + "px";
        }
    }

    function closeDragElement() {
        // Stop moving when the mouse button is released:
        document.onmouseup = null;
        document.onmousemove = null;
    }
}



function newModifyAble() {
    const resizableDiv = document.createElement('div');
    resizableDiv.classList.add('resizable');
    resizableDiv.innerHTML = `
        <div class="resizer top-left"></div>
        <div class="resizer top-right"></div>
        <div class="resizer bottom-left"></div>
        <div class="resizer bottom-right"></div>
    `;

    // Append the resizableDiv to the body or a container of your choice.
    document.body.appendChild(resizableDiv);

    // Apply the resizable functionality to the new element.
    makeResizableDiv(resizableDiv);

    // Apply the drag functionality to the new element.
    dragElement(resizableDiv);
}

// Apply makeResizableDiv to the existing resizable element
const existingResizable = document.querySelector('.resizable');
makeResizableDiv(existingResizable);

