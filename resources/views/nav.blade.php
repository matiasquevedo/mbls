<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top" style="background-color: #f8f8f8 !important; border-bottom: 1px solid #dddddd;">
    <div class="navbar-header">
        <a class="navbar-brand" href="{{ route('principal')}}">
        <img src="/images/embalsa.png" width="40"></a>
        <a class="navbar-brand" href="{{ route('principal')}}">
            </a>
    </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item"><a href="/inicio#productos" class="nav-link"></a></li>
            </ul>
            <div class="form-inline">
                
            <ul class="navbar-nav mr-auto">
              
              @guest
                  <li class="nav-item"><a class="nav-link" href="{{ route('login') }}">Iniciar Sesion</a></li>
                  <li class="nav-item"><a class="nav-link" href="{{ route('register') }}">Registrarse</a></li>
              @else
                    <li class="nav-item">
                    @if(count(\Session::get('cart', array())))
                        <a class="nav-link" href=" {{route('cart.show')}} ">
                            <i class="fas fa-shopping-cart">
                                
                            </i>
                            <span class="badge badge-secondary">{{count(\Session::get('cart', array())) }}</span>
                        </a>                           
                    @endif
                    </li>

                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ Auth::user()->name }}</span></a>          
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        @if(Auth::user()->type == "admin")
                            <a class="dropdown-item" href="{{route('admin.inicio')}}">Mi Perfil</a>
                        @else                                    
                           <a class="dropdown-item" href="{{route('editor.inicio')}}">Mi Perfil</a>
                        @endif
                      <a class="dropdown-item" href="{{ route('logout') }}"
                                  onclick="event.preventDefault();
                                           document.getElementById('logout-form').submit();">
                                  Cerrar Sesion
                      </a>
                      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                          {{ csrf_field() }}
                      </form>
                    </div>
                  </li>
              @endguest
            </ul>            
            </div>
        </div>
    </div>

</nav>
