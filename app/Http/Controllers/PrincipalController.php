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
    	//$categories = DB::table('categoryactividadespost')->get();
    	//dd($categories);
    	//$actividades = Actividad::where($matchThese)->get();
    	//dd($actividades);

    	$actividades = DB::table('actividadespostview')->get();
    	//dd($actividades);
        return view('home')->with('actividades',$actividades);
    }


    public function actividadPublic($actividad){
        $actividad = Actividad::find($actividad);
        $image = DB::table('images')->where('actividad_id',$actividad->id)->value('foto');
        return view('public.actividades.show')->with("actividad",$actividad)->with('image',$image);
    }

}
