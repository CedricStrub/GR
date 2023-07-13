


<script src="{{ asset('../tarteaucitron/tarteaucitron.js') }}"></script>

<script type="text/javascript">
tarteaucitron.init({
    "privacyUrl": "", /* Privacy policy url */
    "bodyPosition": "bottom", /* or top to bring it as first element for accessibility */

    "hashtag": "#tarteaucitron", /* Open the panel with this hashtag */
    "cookieName": "tarteaucitron", /* Cookie name */

    "orientation": "middle", /* Banner position (top - bottom) */

    "groupServices": false, /* Group services by category */
    "serviceDefaultState": "wait", /* Default state (true - wait - false) */
                    
    "showAlertSmall": false, /* Show the small banner on bottom right */
    "cookieslist": false, /* Show the cookie list */
                    
    "closePopup": false, /* Show a close X on the banner */

    "showIcon": true, /* Show cookie icon to manage cookies */
    //"iconSrc": "", /* Optionnal: URL or base64 encoded image */
    "iconPosition": "BottomLeft", /* BottomRight, BottomLeft, TopRight and TopLeft */

    "adblocker": false, /* Show a Warning if an adblocker is detected */
                    
    "DenyAllCta" : true, /* Show the deny all button */
    "AcceptAllCta" : true, /* Show the accept all button when highPrivacy on */
    "highPrivacy": true, /* HIGHLY RECOMMANDED Disable auto consent */
                    
    "handleBrowserDNTRequest": false, /* If Do Not Track == 1, disallow all */

    "removeCredit": false, /* Remove credit link */
    "moreInfoLink": true, /* Show more info link */

    "useExternalCss": false, /* If false, the tarteaucitron.css file will be loaded */
    "useExternalJs": false, /* If false, the tarteaucitron.js file will be loaded */

    //"cookieDomain": ".my-multisite-domaine.fr", /* Shared cookie for multisite */
                    
    "readmoreLink": "", /* Change the default readmore link */

    "mandatory": true, /* Show a message about mandatory cookies */
    "mandatoryCta": true /* Show the disabled accept button when mandatory on */
});
</script>
<div id="footer-ctn">
<div class="footer" id="footer">
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
<div>



@stack('modals')
@livewireScripts
@vite(['resources/js/context.js','resources/js/search.js'])
</body>
</html>
