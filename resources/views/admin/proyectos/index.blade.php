@extends('admin.template.main')


@section('title', 'Lista de Proyectos')

@section('content')
<div class="row">
  <div class="col-md-1">
    
    <a href="{{ route('proyectos.create')}}" class="btn btn-info">Nuevo</a>

  </div>

  <div class="col-md-9">
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Proyecto</th>
          <th>Precio</th>
          <th>Iniciado</th>
        </tr>
      </thead>
      <tbody>
        @foreach($proyectos as $proyecto)
        <tr>
          <td><a href="{{ route('proyectos.show', $proyecto->id) }}">{{$proyecto->name}}</a></td>
          <td>{{$proyecto->precio}}</td>
          <td>{{$proyecto->created_at}}</td>
          <td>
            <a href="{{ route('proyectos.edit', $proyecto->id) }}" class="btn btn-warning">   <span class="glyphicon glyphicon-wrench">          
              </span>
            </a>
            <a href="{{ route('proyectos.destroy', $proyecto->id) }}" class="btn btn-danger">
              <span class="glyphicon glyphicon-remove"></span>
            </a>
          </td>
        </tr>
        @endforeach        
      </tbody>
      
    </table>
    {{$proyectos->render()}}

  </div>
  <div class="col-md-3">
    

  </div>


</div>

@endsection