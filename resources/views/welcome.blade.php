@include('header')


@if(isset($articles))
    <h1>articles recuperer</h1>
    @foreach($articles as $article)
        <h2>{{$article->nom}}</h2>
    @endforeach
@endif


<livewire:card-list />






@include('footer')