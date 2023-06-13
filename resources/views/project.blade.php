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

@vite(['resources/js/fileProcess.js','resources/css/project.css','resources/js/project.js'])


<button id="newWidgetButton" >new widget</button>
<button id="newViewButton" >new view</button>
<button id="saveProjectButton" >save project</button>
<button id="loadProjectButton" >load project</button>


<div class="page">

</div>

@include('footer')