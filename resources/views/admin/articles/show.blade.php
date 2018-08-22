@extends('admin.template.main')


@section('title','Actividad: '.$actividad->title)

@section('content')
  <div>
    <ol class="breadcrumb">
      <li>Categoria / Proveedor:</li>
      <li><a href="{{ route('categories.show',$actividad->category->id)}}">{{$actividad->category->name}}</a></li>
      <li><a href="{{ route('proveedores.show',$actividad->proveedor->id)}}">{{$actividad->proveedor->empresa}}</a></li>
    </ol>
    <div>
      {{$actividad->created_at}}
    </div>

    <div>
      {{$actividad->update_at}}
    </div>
  </div>

	<div class="container-fluid">
  		<h3>{{$actividad->title}} 
  		@if($actividad->state == '0')
			<span class="label label-danger">Sin Publicar</span>
			<div class="btn btn-default"><a href="{{ route('actividades.post',$actividad->id)}}">Publicar</a></div>
		@else
			<span class="label label-success">Publicada</span>
			<div class="btn btn-default"><a href="{{ route('actividades.undpost',$actividad->id)}}">No Publicar</a></div>
  		@endif
  		</h3>
      <h4>{{$actividad->volanta}}</h4>

      <div>
        <span class="glyphicon glyphicon-hourglass">Duración: {{$actividad->duracion}}m</span> <br>
        <span class="glyphicon glyphicon-map-marker">Largo: {{$actividad->largo}}km</span> 
      </div>
      <div>
        <h4>Precio Proveedor: {{$actividad->precioProveedor}} </h4>
        <h4>Precio Publico: {{$actividad->precioPublico}}   </h4>
        <h4>Descuento: {{$actividad->descuento}}   </h4>
      </div>
  		<div class="panel panel-default">
  			<div class="panel-body" id="content">
  				
          <div class="row">
            <div class="col-md-6">
              <h3>Descripción</h3><br>{!!$actividad->descripcion!!}</div>
            <div class="col-md-6">
              <h3>Recomendaciones</h3><br>{!!$actividad->recomendacion!!}</div>
          </div>

  				<div>
  					<div>
  						<h4>Imagen de Portada</h4>
  					</div>
  					<div>
  						<img src="/images/actividades/{{$image}}" alt="">
  					</div>
  				</div>
  				
  			</div>
		</div>
	</div>
@endsection