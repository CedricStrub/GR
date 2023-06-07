import tinymce from 'tinymce/tinymce';

export function hello(){
    console.log('hello')
}

export function event(dropzone){
    dropzone.on('dragenter', function(event) {
        if(event.target.id != "")
            document.getElementById(event.target.id).classList.add('dragover');
    });
    
    dropzone.on('dragleave', function(event) {
        if(event.target.id != "")
            document.getElementById(event.target.id).classList.remove('dragover');
    });
}

export function input(dropzone = null,widget){
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
            image(widget,`url(${event.target.result})`)
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

export function image(widget,url){

    widget.style.backgroundImage = url;
    widget.style.backgroundSize = 'cover';
    widget.style.backgroundPosition = 'center';

}

export function text(widget,event,file = null){
    // Create a new textarea element
    const textarea = document.createElement('textarea');
    textarea.classList.add('tinyMCE'+widget.id)
    widget.appendChild(textarea);

    // Load the file contents into the textarea
    if(file){
        fetch(file)
        .then(response => response.text())
        .then((data) => {
            textarea.textContent = data;
            initTinyMce(widget)
        })
    }else{
        textarea.textContent = event.target.result;
        initTinyMce(widget)
    }

    

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

function initTinyMce(widget){
    var csrfToken = document.querySelector('meta[name="csrf-token"]').content;
    tinymce.init({
        selector: 'textarea.tinyMCE'+widget.id,
        menubar: false,
        branding: false,
        toolbar: 'formatselect | fontselect | undo redo | styleselect | bold italic underline | alignleft aligncenter alignright alignjustify | outdent indent',
        base_url: '/tinymce', // Root location of TinyMCE assets in your public directory
        suffix: '.min', // Suffix for minified files
        width: '100%',
        height: '100%',
        resize: false,
        setup: function (editor) {
            editor.on('dragover drop', function(e) {
                e.preventDefault();
                let element = document.getElementById(widget.id);
                document.getElementById(widget.id).classList.add('dragover');
            
                // Clear any existing timeout
                clearTimeout(element.dataset.dragoverTimeout);
            
                // Set a timeout to remove the class after 1 second of inactivity
                element.dataset.dragoverTimeout = setTimeout(function() {
                    document.getElementById(widget.id).classList.remove('dragover');
                }, 100);
            
                return false;
            });

            let previous = ''
            const save = () => {
                let content = editor.getContent()
                if(previous != content){
                    var file = ''
                    if (content != '') {
                        for(let view in data){
                            for (let i = 0; i < data[view].widgets.length; i++) {
                                if(data[view].widgets[i].id == widget.id){
                                    file = data[view].widgets[i].filename
                                    break;
                                }
                            }
                            if(file != ''){
                                break;
                            }
                        }
                        var d = {
                            file: file,
                            content: content
                        }
                        d = JSON.stringify(d)
                        fetch('/file/update',{
                            method: 'POST',
                            headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': csrfToken
                            },
                            body: d
                        })
                    }
                }
                previous = content
            };
            // Save when the editor's content is changed
            editor.on('change', save);

            // Also save every 5 seconds (5000 milliseconds)
            setInterval(save, 5000);
        }
    });
}
