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
          <div class="col-lg-6">
            <div class="panel panel-default">
              <div class="panel-body text-center">
                <img src="/images/actividades/{{$actividad->foto}}" style="max-width: 100%;object-fit: contain';">
              </div>              
              <div class="panel-heading">{{$actividad->title}} desde ${{$actividad->precioPublico}} <a href=" {{route('cart.add',$actividad->actividades)}} " class="btn btn-warning"> <i class="fas fa-cart-plus"></i>
            </a> </div>
            </div>
          </div>
        
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


