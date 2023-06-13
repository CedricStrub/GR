




<div class="footer">
    <p class="f-info">Informations</p>
    <svg class="f-svg" width="216" height="41" viewBox="0 0 216 41" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M20.5 1L1 40.5H216L216.5 1H20.5Z" fill="#979797" stroke="black"/>
    </svg>
    <div class="f-left">
        <a href="" class="f-link">Acceuil</a>
        <p> / </p>
        <a href="" class="f-link">Plan du site</a>
        <p> / </p>
        <a href="" class="f-link">Contact</a>
    </div>
    <div class="f-center">
        <img src="{{ asset('../images/twitter.png') }}" alt="" class="f-img">
        <img src="{{ asset('../images/linkedin.png') }}" alt="" class="f-img">
        <img src="{{ asset('../images/facebook.png') }}" alt="" class="f-img">
        <img src="{{ asset('../images/tictoc.png') }}" alt="" class="f-img">
        <img src="{{ asset('../images/instagram.png') }}" alt="" class="f-img">
    </div>
    <div class="f-right">
        <a href="" class="f-link">Aide</a>
        <p> / </p>
        <a href="" class="f-link">FAQ</a>
        <p> / </p>
        <a href="" class="f-link">Conditions d'utilisation</a>
    </div>
</div>






@stack('modals')
@livewireScripts
@vite(['resources/js/context.js','resources/js/search.js'])
</body>
</html>
