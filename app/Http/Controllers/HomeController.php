<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */


    public function index(Request $request)
    {
        $this->middleware('auth');
        #dd($request->user()->type);
        if($request->user()->type == 'admin'){
            return view('admin.index');
        }elseif ($request->user()->type == 'member') {
            return redirect()->route('principal');
        }elseif ($request->user()->type == 'even') {
            return view('eventista.index');
        }elseif ($request->user()->type == 'revisor') {
            return view('revisor.index');
        }elseif ($request->user()->type == 'nuevo') {
            return view('nova.index');
        }elseif ($request->user()->type == 'ventas') {
            return view('vendedor.index');
        }
        
        
    }

    public function inicio(){
        return redirect()->route('principal');
    }
}