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
        //dd($cart);
    	return view('admin.cart.cart')->with("cart",$cart);
    }

    public function add($id){
    	$actividad = Actividad::find($id);
    	$cart = \Session::get('cart');

    	$cart[$actividad->id] = $actividad;
    	\Session::put('cart',$cart);
        return redirect()->route('cart.show');

    }

    public function destroy($id){
        $cart = \Session::get('cart');
        unset($cart[$id]);
        \Session::put('cart',$cart);
        return redirect()->route('cart.show');
    }

    public function trash(){
        \Session::forget('cart');
        return redirect()->route('cart.show');
    }

    
}
