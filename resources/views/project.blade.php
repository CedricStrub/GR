@include('header')
<link rel="stylesheet" href="{{ asset('css/project.css') }}">
<script src="https://cdnjs.cloudflare.com/ajax/libs/interact.js/1.10.11/interact.min.js"></script>


<button onclick="newWidget()">new widget</button>
<button onclick="newView()">new view</button>
<button onclick="saveProject()">save project</button>
<button onclick="loadProject()">load project</button>


<div class="page">

</div>

<script src="{{ asset('js/project.js') }}"></script>

@include('footer')