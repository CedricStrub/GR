function hello(){
    console.log('hello')
}

/*Make resizable div by Hung Nguyen*/
function makeResizableDiv(element) {
    element.locked = false;
    const resizers = element.querySelectorAll('.resizer');
    const minimum_size = 20;
    let original_width = 0;
    let original_height = 0;
    let original_x = 0;
    let original_y = 0;
    let original_mouse_x = 0;
    let original_mouse_y = 0;

    const lockButton = element.querySelector(".lock-btn");
        lockButton.addEventListener("click", () => toggleLock(element));

    for (let i = 0; i < resizers.length; i++) {
        const currentResizer = resizers[i];
        currentResizer.addEventListener('mousedown', function (e) {
            e.preventDefault();
            original_width = parseFloat(getComputedStyle(element, null).getPropertyValue('width').replace('px', ''));
            original_height = parseFloat(getComputedStyle(element, null).getPropertyValue('height').replace('px', ''));
            
            const container = document.querySelector('.page');
            const containerRect = container.getBoundingClientRect();
            const elementRect = element.getBoundingClientRect();
        
            original_x = Math.max(Math.min(parseFloat(element.style.left || 0), containerRect.right - elementRect.width), containerRect.left);
            original_y = Math.max(Math.min(parseFloat(element.style.top || 0), containerRect.bottom - elementRect.height), containerRect.top);
        
            original_mouse_x = e.pageX;
            original_mouse_y = e.pageY;
            window.addEventListener('mousemove', resize);
            window.addEventListener('mouseup', stopResize);
        });
        function resize(e) {
            if (element.locked) return;
            const widthOffset = e.pageX - original_mouse_x;
            const heightOffset = e.pageY - original_mouse_y;
        
            const container = document.querySelector('.page');
            const containerRect = container.getBoundingClientRect();
            const elementRect = element.getBoundingClientRect();
        
            // Check for collisions with other resizable elements:
            const resizableElements = document.querySelectorAll('.resizable');
        
            let newWidth, newHeight, newTop, newLeft;
        
            if (currentResizer.classList.contains('bottom-right')) {
                newWidth = Math.min(Math.max(original_width + widthOffset, minimum_size), containerRect.right - element.getBoundingClientRect().left);
                newHeight = Math.min(Math.max(original_height + heightOffset, minimum_size), containerRect.bottom - element.getBoundingClientRect().top);
                newTop = original_y;
                newLeft = original_x;
            } else if (currentResizer.classList.contains('bottom-left')) {
                newWidth = Math.min(Math.max(original_width - widthOffset, minimum_size), element.getBoundingClientRect().right - containerRect.left);
                newHeight = Math.min(Math.max(original_height + heightOffset, minimum_size), containerRect.bottom - element.getBoundingClientRect().top);
                newTop = original_y;
                newLeft = original_x + (original_width - newWidth);
            } else if (currentResizer.classList.contains('top-right')) {
                newWidth = Math.min(Math.max(original_width + widthOffset, minimum_size), containerRect.right - element.getBoundingClientRect().left);
                newHeight = Math.min(Math.max(original_height - heightOffset, minimum_size), element.getBoundingClientRect().bottom - containerRect.top);
                newTop = original_y + (original_height - newHeight);
                newLeft = original_x;
            } else { // top-left
                newWidth = Math.min(Math.max(original_width - widthOffset, minimum_size), element.getBoundingClientRect().right - containerRect.left);
                newHeight = Math.min(Math.max(original_height - heightOffset, minimum_size), element.getBoundingClientRect().bottom - containerRect.top);
                newTop = original_y + (original_height - newHeight);
                newLeft = original_x + (original_width - newWidth);
            }
        
            let allowResize = true;
            resizableElements.forEach((resizableElement) => {
                if (resizableElement === element) return; // Skip the element being resized
        
                const resizableElementRect = resizableElement.getBoundingClientRect();
        
                const isCollidingHorizontally =
                    newLeft < resizableElementRect.right &&
                    newLeft + newWidth > resizableElementRect.left;
        
                const isCollidingVertically =
                    newTop < resizableElementRect.bottom &&
                    newTop + newHeight > resizableElementRect.top;
        
                if (isCollidingHorizontally && isCollidingVertically) {
                    allowResize = false;
                }
            });
        
            if (allowResize) {
                element.style.width = newWidth + 'px';
                element.style.height = newHeight + 'px';
                element.style.top = newTop + 'px';
                element.style.left = newLeft + 'px';
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
        if (e.target.classList.contains("resizer") || elmnt.locked) {
            return; // Ignore mousedown on resizers or if the element is locked
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
        const oldPos1 = pos1;
        const oldPos2 = pos2;
        pos1 = pos3 - e.clientX;
        pos2 = pos4 - e.clientY;
        pos3 = e.clientX;
        pos4 = e.clientY;

        // Calculate the movement direction:
        const horizontalDirection = oldPos1 < pos1 ? "left" : "right";
        const verticalDirection = oldPos2 < pos2 ? "up" : "down";
        // Set the element's new position:
        const newTop = elmnt.offsetTop - pos2;
        const newLeft = elmnt.offsetLeft - pos1;
    
        const container = document.querySelector('.page');
        const containerRect = container.getBoundingClientRect();
        const elementRect = elmnt.getBoundingClientRect();
    
        // Check for collisions with other resizable elements:
        const resizableElements = document.querySelectorAll('.resizable');
        let allowVerticalMove = true;
        let allowHorizontalMove = true;
        resizableElements.forEach((resizableElement) => {
            if (resizableElement === elmnt) return; // Skip the element being dragged
    
            const resizableElementRect = resizableElement.getBoundingClientRect();
    
            const hypotheticalTop = newTop;
            const hypotheticalLeft = newLeft;
    
            const isCollidingHorizontally =
                hypotheticalLeft < resizableElementRect.right &&
                hypotheticalLeft + elementRect.width > resizableElementRect.left;
    
            const isCollidingVertically =
                hypotheticalTop < resizableElementRect.bottom &&
                hypotheticalTop + elementRect.height > resizableElementRect.top;
    
            if (isCollidingHorizontally && isCollidingVertically) {
                allowVerticalMove = false;
                allowHorizontalMove = false;
            }
        });
    
        if (allowVerticalMove) {
            if (newTop >= containerRect.top && newTop + elementRect.height <= containerRect.bottom) {
                elmnt.style.top = newTop + "px";
            }
        }
    
        if (allowHorizontalMove) {
            if (newLeft >= containerRect.left && newLeft + elementRect.width <= containerRect.right) {
                elmnt.style.left = newLeft + "px";
            }
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
    document.body.appendChild(resizableDiv);

    // Apply the resizable functionality to the new element.
    makeResizableDiv(resizableDiv);

    // Apply the drag functionality to the new element.
    dragElement(resizableDiv);

    // Set the initial lock state.
    toggleLock(resizableDiv);
    toggleLock(resizableDiv);

    // Adjust the position of the new div to avoid overlapping.
    const container = document.querySelector('.page');
    const newPosition = findNonOverlappingPosition(resizableDiv, container);

    // Check if newPosition is null and display a message if there's no space for another div.
    if (newPosition === null) {
        alert('There is no space for another div.');
        document.body.removeChild(resizableDiv);
        return;
    }

    resizableDiv.style.left = newPosition.left + 'px';
    resizableDiv.style.top = newPosition.top + 'px';
}


// Apply makeResizableDiv to the existing resizable element
const existingResizable = document.querySelector('.resizable');
existingResizable.innerHTML = `
    <button class="lock-btn">Lock</button>
    <button class="remove-btn">Remove</button>
    <div class="resizer top-left"></div>
    <div class="resizer top-right"></div>
    <div class="resizer bottom-left"></div>
    <div class="resizer bottom-right"></div>
`;

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

function isRectanglesOverlapping(rect1, rect2) {
    return (
        rect1.x < rect2.right &&
        rect1.right > rect2.x &&
        rect1.y < rect2.bottom &&
        rect1.bottom > rect2.y
    );
}

function findNonOverlappingPosition(element, container) {
    const elementRect = element.getBoundingClientRect();
    const containerRect = container.getBoundingClientRect();
    const resizableElements = document.querySelectorAll('.resizable');

    let newPosition = {
        left: containerRect.x,
        top: containerRect.y,
    };

    for (let x = containerRect.left; x < containerRect.right - elementRect.width; x += 10) {
        for (let y = containerRect.top; y < containerRect.bottom - elementRect.height; y += 10) {
            newPosition.left = x;
            newPosition.top = y;
            let newPositionRect = {
                x: newPosition.left,
                y: newPosition.top,
                right: newPosition.left + elementRect.width,
                bottom: newPosition.top + elementRect.height,
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