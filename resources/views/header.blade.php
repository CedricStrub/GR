<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Galaxy-Roads</title>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    @vite(['resources/css/home.css','resources/js/app.js'])
    <!-- Styles -->
    @livewireStyles
</head>
<body>
<nav class="top-nav">
    <a href="{{ url('/') }}">
        logo
    </a>
    <div class="search">
        @if (isset($shortcut[4]))
        <div class="search-sc-14">
            <p id="sc4-txt" class="sc-text-low" style="left:77px; top:12.5px;">{{$shortcut[4][0]}}</p>
            <svg id="s-sc-4" width="1440" height="46" viewBox="0 0 1440 46" fill="none" >
            <path id="sc4-o" class="svg-s-o" d="M21.8704 40L1.5 0H206.222L221.5 40H21.8704Z" transform="translate(44, 0)"/>
            <path id="sc4-i" class="svg-s-i" d="M201.5 29.5L193.666 9.5H21.5L31.1211 29.5H201.5Z" transform="translate(44, 0)"/>
            <path id="m4-o-d" d="M23.8704 45L1.5 0H206.222L223.5 45H23.8704Z" transform="translate(44, 0)"/>
            <path id="m4-o-f" d="M21.8704 40L1.5 0H206.222L221.5 40H21.8704Z" transform="translate(44, 0)"/>
            <path id="ms4-o-d" d="M52.5 45H14.5L1 0H39L52.5 45Z" transform="translate(47, 0)"/>
            <path id="ms4-o-f" d="M51 40H13L1 0H39L51 40Z" transform="translate(47, 0)"/>
            <circle id="n-4" cx="22" cy="10" r="7.5" fill="#FF0000" stroke="black" transform="translate(44, 0)"/>
            </svg>
        </div>
        @endif
        @if (isset($shortcut[2]))
        <div class="search-sc-12">
            <p id="sc2-txt" class="sc-text-mid" style="left:285px; top:12.5px;">{{$shortcut[2][0]}}</p>
            <svg id="s-sc-2" width="1440" height="56" viewBox="0 0 1440 56" fill="none" >
            <path id="sc2-o" class="svg-s-o" d="M221 50H20.3465L1 0H204.647L221 50Z" transform="translate(249, 0)"/>
            <path id="sc2-i" class="svg-s-i" d="M201 40.5L190.529 9.5H21L32.2051 40.5H201Z" transform="translate(249, 0)"/>
            <path id="m2-o-d" d="M222.5 55H21.8465L1 0H204.647L222.5 55Z" transform="translate(249, 0)"/>
            <path id="m2-o-f" d="M221 50H20.3465L1 0H204.647L221 50Z" transform="translate(249, 0)"/>
            <path id="ms2-o-d" d="M67.5 55H17.4603L1 0H52.0714L67.5 55Z" transform="translate(85, 0)"/>
            <path id="ms2-o-f" d="M66 50H15.9603L1 0H52.0714L66 50Z" transform="translate(85, 0)"/>
            <circle id="n-2" cx="21.5" cy="10" r="7.5" fill="#FF0000" stroke="black" transform="translate(249, 0)"/>
            </svg>
        </div>
        @endif
        @if (isset($shortcut[0]))
        <div class="search-sc-10">
            <p id="sc0-txt" class="sc-text-high" style="left:485px; top:12.5px;">{{$shortcut[0][0]}}</p>
            <svg id="s-sc-0" width="1440" height="66" viewBox="0 0 1440 66" fill="none" >
            <path id="sc0-o" class="svg-s-o" d="M21.2696 60.5L1.5 0.5H204L221.5 60.5H21.2696Z" transform="translate(452, 0)"/>
            <path id="sc0-i" class="svg-s-i" d="M201.5 49.5L188.713 9.5H21.5L34.0916 49.5H201.5Z" transform="translate(452, 0)"/>
            <path id="m0-o-d" d="M22.7696 65.5L1.5 0.5H204L223 65.5H22.7696Z" transform="translate(452, 0)"/>
            <path id="m0-o-f" d="M21.2696 60.5L1.5 0.5H204L221.5 60.5H21.2696Z" transform="translate(452, 0)"/>
            <path id="ms0-o-d" d="M82 64.5H19L1 0H64L82 64.5Z" transform="translate(137, 0)"/>
            <path id="ms0-o-f" d="M80.5 59H17.5L1 0H64L80.5 59Z" transform="translate(137, 0)"/>
            <circle id="n-0" cx="22" cy="10" r="7.5" fill="#FF0000" stroke="black" transform="translate(452, 0)"/>
            </svg>
        </div>
        @endif
        <div class="search-icon" id="search-icon"></div>
        <form action="{{ route('search') }}" method="get">
            <!-- <input type="text" class="search-input"></input> -->
            <x-input
                type="text"
                name="q"
                class="search-input"
                placeholder="Search..."
                value="{{ request('q') }}"
            />
        </form>
        <svg id="search-bar" width="1440" height="71" viewBox="0 0 1440 71" fill="none" >
        <path id="search-outer" class="svg-s-o" d="M556.665 70.5H476.335L456.5 0.5H576.5L556.665 70.5Z" transform="translate(200, 0)"/>
        <path id="search-inner" class="svg-s-i" d="M557.5 10L543.486 60H488.014L474 10H557.5Z" transform="translate(200, 0)"/>
        <path id="search-mask" d="M556.665 70.5H476.335L456.5 0.5H576.5L556.665 70.5Z" transform="translate(200, 0)"/>
        <path id="search-mask-deploy" d="M20.5 70L1 0H1031L1011 70H20.5Z" transform="translate(200, 0)"/></svg>
        @if (isset($shortcut[1]))
        <div class="search-sc-11">
            <p id="sc1-txt" class="sc-text-high" style="left:795px; top:12.5px;">{{$shortcut[1][0]}}</p>
            <svg id="s-sc-1" width="1440" height="66" viewBox="0 0 1440 66" fill="none">
            <path id="sc1-o" class="svg-s-o" d="M204 60.5H3L20.5 0.5H223.5L204 60.5Z" transform="translate(756, 0)" />
            <path id="sc1-i" class="svg-s-i" d="M23 49.5L35.7869 9.5H203L190.408 49.5H23Z" transform="translate(756, 0)" />
            <path id="m1-o-d" d="M202.5 65.5H1.5L20.5 0.5H223.5L202.5 65.5Z" transform="translate(756, 0)" />
            <path id="m1-o-f" d="M204 60.5H3L20.5 0.5H223.5L204 60.5Z" transform="translate(756, 0)" />
            <path id="ms1-o-d" d="M1.5 64.5H64.1038L82 0H19.3962L1.5 64.5Z" transform="translate(1213, 0)"/>
            <path id="ms1-o-f" d="M3 59H65.6038L82 0H19.3962L3 59Z" transform="translate(1213, 0)"/>
            <circle id="n-1" cx="203" cy="10" r="7.5" fill="#FF0000" stroke="black" transform="translate(755, 0)" />
            </svg>
        </div>
        @endif
        @if (isset($shortcut[3]))
        <div class="search-sc-13">
            <p id="sc3-txt" class="sc-text-mid" style="left:995px; top:12.5px;">{{$shortcut[3][0]}}</p>
            <svg id="s-sc-3" width="1440" height="56" viewBox="0 0 1440 56" fill="none">
            <path id="sc3-o" class="svg-s-o" d="M201 50.5H2.26203L18.5001 0.5H220.5L201 50.5Z" transform="translate(961, 0)" />
            <path id="sc3-i" class="svg-s-i" d="M21.5 40.5L31.9128 9.5H200.5L189.357 40.5H21.5Z" transform="translate(961, 0)" />
            <path id="m3-o-d" d="M199 55.5H0.761963L18.4999 0.5H220.5L199 55.5Z" transform="translate(961, 0)" />
            <path id="m3-o-f" d="M201 50.5H2.26203L18.5001 0.5H220.5L201 50.5Z" transform="translate(961, 0)" />
            <path id="ms3-o-d" d="M0.690475 55H51.5L68 0H16.1429L0.690475 55Z" transform="translate(1278, 0)"/>
            <path id="ms3-o-f" d="M2 50H52.8095L68 0H16.1429L2 50Z" transform="translate(1278, 0)"/>
            <circle id="n-3" cx="200" cy="10" r="7.5" fill="#FF0000" stroke="black" transform="translate(960, 0)" />
            </svg>
        </div>
        @endif
        @if (isset($shortcut[5]))
        <div class="search-sc-15">
            <p id="sc5-txt" class="sc-text-low" style="left:1195px; top:12.5px;">{{$shortcut[5][0]}}</p>
            <svg id="s-sc-5" width="1440" height="46" viewBox="0 0 1440 46" fill="none">
            <path id="sc5-o" class="svg-s-o" d="M203.297 40.5H3L18.3076 0.5H223L203.297 40.5Z" transform="translate(1163, 0)" />
            <path id="sc5-i" class="svg-s-i" d="M23 29.5L30.8772 9.5H204L194.325 29.5H23Z" transform="translate(1163, 0)" />
            <path id="m5-o-d" d="M201 45.5H1L18.3076 0.5H223L201 45.5Z" transform="translate(1163, 0)" />
            <path id="m5-o-f" d="M203.297 40.5H3L18.3076 0.5H223L203.297 40.5Z" transform="translate(1163, 0)" />
            <path id="ms5-o-d" d="M1.5 45H39.5L53 0H15L1.5 45Z" transform="translate(1333, 0)"/>
            <path id="ms5-o-f" d="M3 40H41L53 0H15L3 40Z" transform="translate(1333, 0)"/>
            <circle id="n-5" cx="204" cy="10" r="7.5" fill="#FF0000" stroke="black" transform="translate(1160, 0)"/>
            </svg>
        </div>
        @endif
    </div>

    @if (Route::has('login'))
    <div class="mc">
        @auth
            
            <div id="profil-icon" class="profil-icon"></div>
            <div id="project-icon" class="project-icon"></div>
            <div id="dark-icon" class="dark-icon"></div>
            <div id="settings-icon" class="settings-icon"></div>
            <svg width="207" height="171" viewBox="0 0 207 171" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path id="p-b1-d" d="M21 50.5L1 1H67L86.5 50.5H21Z" />
                <path id="p-b2-d" d="M41 100L21 50.5H87.3L106.8 100H41Z" />
                <path id="p-d" d="M112.5 114.5L67 1H206V114.5H112.5Z" />
                <a href="{{ url('/project') }}" class="profil">
                    <path id="p-b1-f" class="svg-p invisible" d="M26 50.5L6 1H67L86.706 50.5H26Z" transform="translate(63, 0)"/>
                </a>
                <a href="{{ url('/dashboard') }}" class="profil">
                    <path id="p-b2-f" class="svg-p invisible" d="M45.7226 100L26 50.5H86.805L106.5 100H45.7226Z" transform="translate(63, 0)"/>
                </a>
                <a href="{{ url('/dashboard') }}" class="profil">
                    <path id="p-b3-d" d="M206 170.5V114.5H126L149.781 170.5H206Z" />
                </a>
                <path id="p-b3-f" class="svg-p invisible" d="M205.983 160.5V114.5H130.25L149.764 160.5H205.983Z" transform="translate(0,-50)"/>
                <a href="{{ url('/dashboard') }}" class="profil">
                    <path id="p-f" class="svg-p" d="M129 70.5L101.5 1H206V70.5H129Z" />
                </a>
            </svg>
            
        @else
            <a href="{{ route('login') }}" class="login">
                <p class="mc-login">Connexion</p>
                <svg width="216" height="51" viewBox="0 0 216 51" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M20.4548 50L1 0H215.501L216 50H20.4548Z" fill="#979797" stroke="black"/>
                </svg>
            </a>
            @if (Route::has('register'))
                <a href="{{ route('register') }}" class="register">
                    <p class="mc-register">Inscription</p>
                    <svg width="217" height="40" viewBox="0 0 217 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M20.4548 39L1 0H215.501L216 39H20.4548Z" fill="#979797" stroke="black"/>
                    </svg>
                </a>
            @endif
        @endauth
    </div>
    @endif
</nav>

