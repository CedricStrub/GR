@include('header')
<script src="https://cdnjs.cloudflare.com/ajax/libs/interact.js/1.10.11/interact.min.js"></script>

<script>
    var project = @json($project);
    var isDirty = @json($isDirty);
    var init = @json(false);
    var idView = @json(0);
</script>

@if(isset($result))
<script>
    var data = @json($result);
</script>
@else
<script>
    var data = @json(null);
</script>
@endif

<div id="publication" class="overlay">
    <div class="overlay-content">
        <div class="card-form">
            <div class="cf-head">
                <div class="cf-h-left" id="cf-h-left"></div>
                <div class="cf-h-center">
                    <label class="cf-title">PRESENTATION</label>
                </div>
                <div id="cf-h-right" class="cf-h-right"></div>
            </div>
            <div class="cf-body">
                <div class="cf-left">
                    <label class="cf-l-title">Aperçu</label>
                    <div class="card" style="position: absolute; top: 135px; z-index: 7; cursor: default;">
                    <div class="c-head">
                        <div class="c-t-left">
                            <p class="c-title" id="c-title">titre</p>  
                        </div>
                        <div class="c-t-right">
                            <a>
                                <img src="{{ asset('../images/ajouter-la-liste.png') }}" class="c-t-img">
                            </a>
                            <a>
                                <img src="{{ asset('../images/solution.png') }}" class="c-t-img">
                            </a>
                        </div>
                    </div>
                    <div class="c-body">
                        @if(isset($result[0]['URLminiature']))
                        <img src="{{ asset('../images/'.$result[0]['URLminiature']) }}" class="c-miniature" id="c-miniature">
                        @else
                        <img src="{{ asset('../images/cm-image.png') }}" alt="" class="c-miniature" id="c-miniature">
                        @endif
                        <div class="c-description" >
                            <p id="c-description">description</p>
                        </div>
                        <div class="c-footer">
                            <div class="c-stat">vue</div>
                            <div class="c-author">auteur</div>
                        </div>
                    </div>
                </div>
                <svg width="400" height="570" viewBox="0 0 400 570" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M20 1H377L398.5 22.5V569.5H1V20L20 1Z" fill="#1E1E1E" stroke="#979797"/>
                    <path d="M1.5 52.5H399.5" stroke="#979797"/>
                </svg>
                </div>

                <div class="cf-right">
                    <label class="cf-l-title">Création de la fiche de présentation</label>
                        <svg width="1333" height="572" viewBox="0 0 1333 572" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M21 2H1310L1331.5 23.5V570.5H2V21L21 2Z" fill="#1E1E1E" stroke="#979797" stroke-width="3" stroke-dasharray="15 15"/>
                        <path d="M1 53H1333" stroke="#979797" stroke-width="3" stroke-dasharray="15 15"/>
                        </svg>

                    <textarea class="cf-input" id="cf-input"></textarea>
                    <textarea class="cf-description" id="cf-description"></textarea>
                    <div class="cf-dropzone" id="cf-dropzone"></div>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="permission" class="overlay">
    <div class="overlay-content">
        <div class="card-form">
            <div class="cf-head">
                <div class="cf-h-left" id="af-h-left"></div>
                <div class="cf-h-center">
                    <label class="cf-title">AUTORISATIONS</label>
                </div>
                <div id="af-h-right" class="cf-h-right"></div>
            </div>
            <div class="cf-body">
                <div class="af-left">
                    <div class="af-menu1">
                        <svg width="595" height="542" viewBox="0 0 595 542" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0.5 56.5V541.5H594.5V55L552.5 0.5H321L275.5 56L0.5 56.5Z" fill="#1E1E1E" stroke="#979797" stroke-width="3" stroke-dasharray="15 15"/>
                        </svg>
                    </div>
                    <div class="af-menu2">
                        <svg width="595" height="542" viewBox="0 0 595 542" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0.5 55.5V541.5H594.412V56H319L274.5 0.5H47.5L0.5 55.5Z" fill="#1E1E1E" stroke="#979797" stroke-width="3" stroke-dasharray="15 15"/>
                        </svg>
                    </div>
                </div>
                <div class="af-right">
                    <div class="af-menu3">
                        <svg width="1179" height="543" viewBox="0 0 1179 543" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M285.5 57.5H0.5V542.5H1177.5L1177.53 57.5H630.5L585.5 0.5H329L285.5 57.5Z" fill="#1E1E1E" stroke="#979797" stroke-width="3" stroke-dasharray="15 15"/>
                        </svg>
                    </div>    
                    <div class="af-menu4">
                        <svg width="1178" height="543" viewBox="0 0 1178 543" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0.5 56.5V540.5L1177.5 542.5V57.5H329.5L284.5 0.5H48.5L0.5 56.5Z" fill="#1E1E1E" stroke="#979797" stroke-width="3" stroke-dasharray="15 15"/>
                        </svg>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@vite(['resources/js/fileProcess.js','resources/css/project.css','resources/js/project.js'])

<div class="page">

</div>

<div class="cm">
    <!-- ajouter video -->
    <div id="cm-icon-video" class="cm-icon-video"></div>
    <svg class="cm-video" width="96" height="51" viewBox="0 0 96 51" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M20 1L1 50.5H79L94.7974 1H20Z" fill="#D9D9D9" stroke="black"/>
    </svg>
    <!-- ajouter image -->
    <div id="cm-icon-image">
        <div class="cm-icon-image"></div>
        <svg class="cm-image" width="96" height="61" viewBox="0 0 96 61" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M20 1L1 60.5H78L95.1726 1H20Z" fill="#D9D9D9" stroke="black"/>
        </svg>
    </div>
    <!-- ajouter une vue -->
    <div id="cm-icon-vue">
        <div class="cm-icon-vue"></div>
        <svg class="cm-vue" width="81" height="20" viewBox="0 0 81 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="1" y="0.5" width="79" height="19" fill="#D9D9D9" stroke="black"/>
        </svg>
    </div>
    <!-- ajouter texte -->
    <div id="cm-icon-txt">
        <div class="cm-icon-txt"></div>
        <svg class="cm-txt" width="123" height="71" viewBox="0 0 123 71" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M21 1L1 70.5H122L102 1H21Z" fill="#D9D9D9" stroke="black"/>
        </svg>
    </div>
    <!-- ajouter tableur -->
    <div id="cm-icon-table" class="cm-icon-table"></div>
    <svg class="cm-table" width="97" height="61" viewBox="0 0 97 61" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M0.818237 1H77L96 60.5H18L0.818237 1Z" fill="#D9D9D9" stroke="black"/>
    </svg>
    <!-- ajouter objet3D -->
    <div id="cm-icon-3d" class="cm-icon-3d"></div>
    <svg class="cm-3d" width="96" height="51" viewBox="0 0 96 51" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M1.28638 1H76.0001L95.0001 50.5H17.0001L1.28638 1Z" fill="#D9D9D9" stroke="black"/>
    </svg>

</div>

@include('footer')