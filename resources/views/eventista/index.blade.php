@extends('eventista.template.main')


@section('title', 'Inicio')

@section('content')

	<div class="container">
		<div class="row row-backbordered text-center">
			<div class="col-sm-12">
				<div class="panel panel-default panel-floating panel-floating-inline">
					<div class="panel-body">
						<div class="panel-content">
							<h3 class="m-b-0">
								<strong>Eventista</strong>
							</h3>
							<p class="text-muted">Tareas de adminitracion de Eventos</p>
							<div class="panel-actions"></div>
						</div>
						
					</div>
				</div>


				<div class="row row-padded homepage-grid row-bordered p-t text-center">
    <a href="{{ route('eventista.eventos.index')}}"><div class="col-sm-6">
      <img class="homepage-grid-icon" src="//cdn.shopify.com/s/files/1/0691/5403/t/141/assets/components-icon.svg?16007593649882510692">
      <h5><strong>Mis Eventos</strong></h5>
      <p class="text-muted">Lista de Eventos</p>
    </div></a>
	<a href="{{ route('eventos.create')}}">
	<div class="col-sm-6">
      <img class="homepage-grid-icon" src="//cdn.shopify.com/s/files/1/0691/5403/t/141/assets/sliders-icon.svg?16007593649882510692">
      <h5><strong>Nuevo Evento</strong></h5>
      <p class="text-muted">Subir un Nuevo Evento</p>
    </div>
		
	</a>
    
  </div>




			</div>
		</div>
	</div>

	


@endsection