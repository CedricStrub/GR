<a href="{{ url('/') }}">
    <div class="s-logo"></div>
    <svg class="pos" width="70" height="72" viewBox="0 0 70 72" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M48.9994 71L68.8999 1H0.999939V71H48.9994Z" fill="#D9D9D9" stroke="black"/>
    </svg>

</a>
<div class="s-search" id="s-search">
    <div class="s-bar">
    <form action="{{ route('search') }}" method="get">
        <!-- <input type="text" class="search-input"></input> -->
        <x-input
            type="text"
            name="q"
            class="s-search-input"
            placeholder="Search..."
            value="{{ request('q') }}"
        />
    </form>
    </div>
</div>
<div class="burger">
    <div id="menuM">
        <a class="menuM-l1" href="{{ route('login') }}">Connexion</a>
        <a class="menuM-l2" href="{{ route('register') }}">Inscription</a>
        <svg width="213" height="151" viewBox="0 0 213 151" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M43.5 150L1 1H212V150H43.5Z" fill="#D9D9D9" stroke="black"/>
        <path d="M29 100H159" stroke="black"/>
        <path d="M15 51H145" stroke="black"/>
        </svg>
    </div>
</div>
<div class="s-mc">
    <a href="javascript:void(0);" class="icon" onclick="menuMobile()">
        <div class="s-menu"></div>
        <svg class="pos" width="77" height="71" viewBox="0 0 77 71" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M21 70.5L1 1H76V70.5H21Z" fill="#D9D9D9" stroke="black"/>
        </svg>
    </a>
</div>

