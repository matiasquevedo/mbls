<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Actividad extends Model
{
    protected $table = "actividades";

    protected $fillable = ['id','title', 'volanta', 'descripcion', 'recomendacion', 'category_id', 'proveedor_id', 'precioProveedor', 'precioPublico', 'descuento', 'user_id','duracion','largo'];

    public function category(){
    	return $this->belongsTo('App\Category');
    }

    public function user(){
    	return $this->belongsTo('App\User');
    }

    public function images(){
    	return $this->hasMany('App\Image');
    }

    public function actividadPaquete(){
        return $this->hasMany('App\ActividadPaquete');
    }

    public function proveedor(){
        return $this->belongsTo('App\Proveedor');
    }
}


