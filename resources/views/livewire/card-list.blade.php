<div class="container">
    <div class="c-spacer"></div>
    @if(empty($datas))
    <h2>Aucun résultat, essayer en utilisant d'autres mot clef</h2>
    @else
    @foreach($datas as $data)

    <div class="card" x-data @click="if (!$event.target.closest('a')) window.location.href = '{{ url('project/'.$data['id']) }}'">
     <div class="c-head">
        <div class="c-t-left">
            <p class="c-title">{{ $data['nom'] }}</p>  
        </div>
        <div class="c-t-right">
            <a href="{{ url('/') }}">
                <img src="{{ asset('../images/ajouter-la-liste.png') }}" class="c-t-img">
            </a>
            <a href="{{ url('/') }}">
                <img src="{{ asset('../images/solution.png') }}" class="c-t-img">
            </a>
        </div>
    </div>
    <div class="c-body">
        <img src="{{ asset('../images/'. $data['miniature']) }}" alt="" class="c-miniature">
        <div class="c-description">
            <p>{{ $data['description'] }}</p>
        </div>
        <div class="c-footer">
            <div class="c-stat">{{ $data['vues'] }} vue</div>
            <div class="c-author">{{ $data['auteur'] }}</div>
        </div>
    </div>
</div>
    @endforeach
    @endif


    @if($projects->hasMorePages())
        <button wire:click.prevent="loadMore">Load more</button>
        <div
            x-data="{
                observe () {
                    let observer = new IntersectionObserver((entries) => {
                        entries.forEach(entry => {
                            if (entry.isIntersecting) {
                                @this.call('loadMore')
                            }
                        })
                    }, {
                        root: null
                    })
        
                    observer.observe(this.$el)
                }
            }"
            x-init="observe"
        ></div>
    @endif
</div> 