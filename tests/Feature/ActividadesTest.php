<?php

namespace Tests\Feature;

use App\User;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ActividadesTest extends TestCase
{
     /**
     * A basic functional test example.
     *
     * @return void
     */

     /** @test */
     public function testApplication(){
         $this->withSession(['email' => 'matiasquevedo.sabbath@gmail.com','password'=>'Matias90Javier10'])->visit('/admin')->see('Inicio');
     }
    
    
    
}
