@extends('welcome')

@section('title','Home')

@section('content')
<div class="container">
    <div class="text-center">
        <h3>¡Tus proximas vacaciones en San Rafael!</h3>
    </div>

    <div class="actividades">
        <div class="row">
        	<div class="col-md-3">
        		@foreach($actividades as $actividad)
        		<div class="card" style="width: 18rem;">        			
                    <a href="{{ route('actividad.public',$actividad->id) }}">
                        <img class="card-img-top" src="/images/actividades/{{$actividad->foto}}" alt="Card image cap">                        
                        <div class="card-body">
                            <h4 class="card-title">{{$actividad->title}} - ${{$actividad->precioPublico}} </h4>
                            <h5> {{$actividad->volanta}} </h5>
                            <div class="text-justify">
                                <p class="card-text">{!! str_limit($actividad->descripcion, $limit = 149, $end = '...') !!}</p>
                            </div>
                        </div>
                    </a>
        		</div>
        		@endforeach
        	</div>
        </div>
    </div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
    <div style="height: 1239px;">asda</div>

</div>
@endsection
