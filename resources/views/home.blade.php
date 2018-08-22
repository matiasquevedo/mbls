@extends(Auth::user() ? 'layouts.app' : 'welcome')

@section('content')
<div class="container">
    <div class="text-center">
        <h3>¡Tus proximas vacaciones en San Rafael!</h3>
    </div>
    <div class="actividades">
        <div class="row">            
             @foreach($categories as $category)
                <div>                    
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5> {{$category->name}} </h5>
                        </div>
                    </div>
                </div>
             @endforeach
        </div>
    </div>

</div>
@endsection
