import tinymce from 'tinymce'

export function hello(){
    console.log('hello')
}

export function event(dropzone,element){
    dropzone.on('dragenter', function() {
        document.getElementById('#' + element.id).classList.add('dragover');
    });
    
    dropzone.on('dragleave', function() {
        document.getElementById('#' + element.id).classList.remove('dragover');
    });
}

export function input(dropzone,widget){
    // Create a hidden file input
    let fileInput = document.createElement('input');
    fileInput.type = 'file';
    fileInput.style.display = 'none';
    document.body.appendChild(fileInput);

    // Listen to change event on our file input
    fileInput.addEventListener('change', function() {
        if (fileInput.files.length) {
            let file = fileInput.files[0];
            dropzone.addFile(file);
        }
    });

    // Open the file dialog when widget is double clicked
    widget.addEventListener('dblclick', function () {
        fileInput.click();
    });

    dropzone.on("addedfile", function(file) {
        selector(widget,file)
    });
}

export function selector(widget,file){
    let reader = new FileReader();
    console.log(file.type)
    if (file.type === 'image/png' || file.type === 'image/jpeg' || file.type === 'image/jpg' || file.type === 'image/gif') {
        reader.addEventListener("load", function(event) {
            image(widget,event)
        })
    reader.readAsDataURL(file);
    }
    else if (file.type === 'text/plain'){
        reader.addEventListener("load", function(event) {
            text(widget,event)
        })
    reader.readAsText(file);
    }
}

function image(widget,event){
    let img = new Image();
    
    img.onload = function() {
        // Adjust the size of the widget here
        widget.style.width = img.width + 'px';
        widget.style.height = img.height + 'px';

        // Add the image to the widget
        widget.style.backgroundImage = `url(${img.src})`;
        widget.style.backgroundSize = 'cover';
        widget.style.backgroundPosition = 'center';
    };

    img.src = event.target.result;
}

function text(widget,event){
    // Create a new textarea element
    const textarea = document.createElement('textarea');
    widget.appendChild(textarea);

    // Load the file contents into the textarea
    textarea.textContent = event.target.result;

    // Initialize TinyMCE on the textarea
    tinymce.init({
        selector: 'textarea',
        menubar: false,
        branding: false,
        toolbar: 'formatselect | fontselect | undo redo | styleselect | bold italic underline | alignleft aligncenter alignright alignjustify | outdent indent',
        base_url: '/tinymce', // Root location of TinyMCE assets in your public directory
        suffix: '.min', // Suffix for minified files
        width: '100%',
        height: '100%',
        resize: false,
    });

    const lockButton = widget.querySelector('.lock-btn');
    lockButton.addEventListener('click', () => {
        if (tinymce) {
            if(tinymce.EditorManager.activeEditor.mode.get() === 'design'){
                tinymce.activeEditor.mode.set('readonly')
            }else{
                tinymce.activeEditor.mode.set('design')
            }
        } else {
            console.log("TinyMCE editor instance is not initialized.");
        }
    });
}
