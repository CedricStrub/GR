let aspectRatio = window.innerWidth / window.innerHeight;
let format = aspectRatio > 1 ? 'landscape' : 'portrait';
let last = 'landscape'

async function loadComponent(componentToLoad, containerId) {
    const response = await fetch(componentToLoad);
    const html = await response.text();

    document.getElementById(containerId).innerHTML = html;
}

async function resize() {
    console.log("resize");
    var aspectRatio = window.innerWidth / window.innerHeight;
    var headerComponent = aspectRatio > 1 ? '/loadLandscapeHeader' : '/loadPortraitHeader';
    var footerComponent = aspectRatio > 1 ? '/loadLandscapeFooter' : '/loadPortraitFooter';

    last = format

    await loadComponent(headerComponent, 'top-nav');
    await loadComponent(footerComponent, 'footer-ctn');

    if (headerComponent == '/loadLandscapeHeader') {
        // Wait for both modules to load
        const [{ setup: setupContext }, { setup: setupSearch }] = await Promise.all([
            import('/resources/js/context.js'),
            import('/resources/js/search.js'),
        ]);
        document.removeEventListener('click', checkClickOutside);

        setupContext();
        setupSearch();
    }else{
        document.addEventListener('click', checkClickOutside);
    }
}


function debounceResize(){
    aspectRatio = window.innerWidth / window.innerHeight;
    format = aspectRatio > 1 ? 'landscape' : 'portrait';
    if(format != last){
        resize();
    }
}

window.addEventListener('resize', debounceResize);

debounceResize()

window.menuMobile = function() {
    
    var x = document.getElementById("menuM");
    if (x.style.display === "block") {
      x.style.display = "none";
    } else {
      x.style.display = "block";
    }
}

window.menuFooter = function() {
    
    var x = document.getElementById("mf-burger");
    if (x.style.display === "block") {
      x.style.display = "none";
    } else {
      x.style.display = "block";
    }
}

function checkClickOutside(event) {
    var x = document.getElementById("menuM");
    var menu = document.querySelector('.s-mc');
    var y = document.getElementById("mf-burger");
    var foot = document.querySelector('.s-footer')

    if (!menu.contains(event.target)) {
        x.style.display = "none";
    }
    
    if (!foot.contains(event.target)) {
        y.style.display = "none";
    }
}

if(format == 'portrait'){
    document.addEventListener('click', checkClickOutside);
}