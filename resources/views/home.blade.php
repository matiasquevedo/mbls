@extends('welcome')
@section('title','Home')

@section('header')
<header class="image-bg-fluid-height">
  <div class="container">
   <div class="row text-left">
    <div class="col-sm header-text">
      <h1>Comenza tu aventura en San Rafael</h1>
      <p>sfasdfasdfasdfasdfasdfasdfasdfasdfadsf</p>
      <button type="button" id="search" class="btn btn-primary btn-lg">Buscar Actividades</button>
      <button type="button" id="search" class="btn btn-primary btn-lg">Registrarme</button>
    </div>
    <div class="col-sm">
    </div>
    <div class="col-sm">
    </div>
  </div> 
</div>
</header>
@endsection

@section('content')

<div class="container" >
  <div class="text-center">
    <div class="full" style="width: full !important;">
      {!! Form::open(['route'=>'actividades.index','method'=>'GET','class'=>'navbar-form full-width']) !!}
      <div class="input-group">

        {!! Form::text('title',null,['class'=>'form-control','placeholder'=>'Buscar Actividad','aria-describedby'=>'search']) !!}

        <span class="input-group-addon" id="search"><span class="glyphicon glyphicon-search"></span></span>
      </div>

      {!! Form::close() !!}
    </div>
    <h3>¡Tus proximas vacaciones en San Rafael!</h3>

  </div>
  <div class="actividades">          
   @foreach($categories as $category)
   @if(count($category->actividades))
   <div class="row"> 
    <div class="category-name">
      <h3>Actividades en {{$category->name}}</h3>
    </div>
      @foreach($actividades as $actividad)                        
        @if($category->id == $actividad->category_id)
        @if(count($category->actividades->where('state', 1)) % 4 == 0)
          <div class="col-lg-3">
            <div class="panel panel-default">
              <div class="panel-body">
                <img src="/images/actividades/{{$actividad->foto}}" style="max-width: 100%;object-fit: contain';">
              </div>              
              <div class="panel-heading">{{$actividad->title}} desde ${{$actividad->precioPublico}}</div>
            </div>
          </div>
        @elseif(count($category->actividades->where('state', 1)) % 3 == 0)
          <div class="col-lg-4">
              <div class="panel panel-default">
                <div class="panel-body">
                  <img src="/images/actividades/{{$actividad->foto}}" style="max-width: 100%;">
                </div>              
                <div class="panel-heading">{{$actividad->title}} desde ${{$actividad->precioPublico}}</div>
              </div>              
          </div>
        @elseif(count($category->actividades->where('state', 1)) % 2 == 0)
          <div class="col-lg-6">
              <div class="panel panel-default">
                <div class="panel-body">
                  <img src="/images/actividades/{{$actividad->foto}}" style="max-width: 100%;">
                </div>              
                <div class="panel-heading">{{$actividad->title}} desde ${{$actividad->precioPublico}}</div>
              </div>              
          </div>
        @else
          <div class="col-lg-12">
              <div class="panel panel-default">
                <div class="panel-body">
                  <img src="/images/actividades/{{$actividad->foto}}" style="max-width: 100%;">
                </div>              
                <div class="panel-heading">{{$actividad->title}} desde ${{$actividad->precioPublico}}</div>
              </div>              
          </div>
        @endif
        @endif
      @endforeach
 </div>
 @endif
 @endforeach
</div>

<div class="grid" data-masonry='{ "itemSelector": ".grid-item", "columnWidth": 200 }'>      

</div>

</div>
@endsection


