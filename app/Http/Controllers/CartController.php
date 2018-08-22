<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Actividad;

class CartController extends Controller
{
    //
    public function __construct(){
    	if(!\Session::has('cart')) \Session::put('cart',array());
    }

    //mostrar carrito
    public function show(){
    	$cart = \Session::get('cart');
    	return $cart;
    }

    public function add($id){
    	$actividad = Actividad::find($id);
    	$cart = \Session::get('cart');

    	$cart[$actividad->id] = $actividad;
    	\Session::put('cart',$cart);
        return redirect()->route('cart.show');

    }
}
