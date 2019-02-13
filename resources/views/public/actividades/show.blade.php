@extends('welcome')

@section('title','Home')
@section('content')
<div class="container">
	<div class="text-center">
		<img src="/images/actividades/{{$image}}" height="60%" alt="">
	</div>
	
	<h2> {{$actividad->title}} </h2>
	<h3> {{$actividad->volanta}} </h3>
	<div class="text-left" style="word-wrap: break-word;">
		<p>{!!$actividad->descripcion!!}</p>
	</div><br>

	<h5>Agregar al Carrito</h5>
	{!! Form::open(['route'=>'cart.add', 'method'=>'POST','files'=>'true']) !!}
		
		<div class="form-group" style="display: none;">
			{!! Form::label('cantidad','Personas') !!}
			{!! Form::text('cantidad',null,['class'=>'form-control','placeholder'=>'Nombre','required']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('cantidad','Personas') !!}
			{!! Form::text('cantidad',null,['class'=>'form-control','placeholder'=>'Nombre','required']) !!}
		</div>

		<div class="form-group">
			{!! Form::submit('Crear',['class'=>'btn btn-primary']) !!}
		</div>
	{!! Form::close() !!}

	<div class="row">
		<div class="col-md-6">
			
		</div>
		<div class="col-md-6">
			
		</div>
	</div>


	
</div>
@endsection