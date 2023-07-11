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
    await loadComponent(footerComponent, 'footer');

    if (headerComponent == '/loadLandscapeHeader') {
        const { setup: setupContext } = await import('/resources/js/context.js');
        const { setup: setupSearch } = await import('/resources/js/search.js');

        setupContext();
        setupSearch();
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
    console.log(x)
    if (x.style.display === "block") {
      x.style.display = "none";
    } else {
      x.style.display = "block";
    }
  }

document.addEventListener('click', function(event) {
    var x = document.getElementById("menuM");
    var menu = document.querySelector('.s-mc');

    if (!menu.contains(event.target)) { 
        x.style.display = "none";
    }
});