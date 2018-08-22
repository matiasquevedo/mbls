@extends('admin.template.main')


@section('title','Proyecto: '.$proyecto->name)

@section('content')

	<div class="container">
  		<h3>{{$proyecto->name}} 
  		</h3>
      @foreach($proyecto->tareas as $tarea)
        <h4> {{$tarea->name}} </h4>
      @endforeach 
	</div>
@endsection