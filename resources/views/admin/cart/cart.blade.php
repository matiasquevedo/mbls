@extends('welcome')

@section('title','Carrito')

@section('content')
<div class="container">
	<div class="text-right">		
		<a href=" {{route('cart.trash')}} " class="btn btn-info"><span class="glyphicon glyphicon-trash"></span></a>
	</div>


	 <table class="table ">
	  <thead>
	    <tr>
	      <th>Nombre</th>
	      <th>Precio</th>
	      <th>Cantidad</th>
	      <th>SubTotal</th>
	      <th>Acción</th>
	    </tr>
	  </thead>
	  <tbody>
	  	@if(count($cart))
	  	@foreach($cart as $item)
			<tr>
				<td>{{$item->title}}</td>
				<td>{{$item->precioPublico}}</td>
				<td>{{$item->precioPublico}}</td>
				<td>{{$item->precioPublico}}</td>
				<td><a href=" {{route('cart.destroy',$item->id)}} " class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></a></td>
			</tr>


	  	@endforeach
	  	@else
	  		<tr>
	  			<td></td>
	  			<td></td>
	  			<td> <p class="text-center"><i>No hay elementos</i></p> </td>
	  			<td></td>
	  			<td></td>
	  		</tr>
	  	@endif
	  </tbody>
	</table>
</div>

@endsection