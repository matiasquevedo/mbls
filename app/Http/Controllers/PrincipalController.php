<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Tag;
use App\Actividad;
use App\Image;
use App\User;
use App\Proveedor;
use Illuminate\Support\Facades\DB;

class PrincipalController extends Controller
{
    //

    public function index(){

    	//$matchThese = ['actividades'=>'state' => '1'];
    	$categories = DB::table('categoryactividadespost')->get();
    	dd($categories);
    	//$actividades = Actividad::where($matchThese)->get();
    	//dd($actividades);
        return view('home')->with('categories',$categories);
    }

}
