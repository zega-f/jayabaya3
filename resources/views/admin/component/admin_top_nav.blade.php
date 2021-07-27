<div class="row" style="width: 100%;">
    <div class="col" style="background-color: #fff; padding: 0;" >
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container-fluid" style="width: 100%; ">
            <h5 style="color: black;">Admin JayabayaBimbel</h5>
                <!-- <a class="navbar-brand" href="{{ url('/') }}">
                    Welcome 
                </a> -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">


                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                       @if(Session::get('login')==TRUE)
                        <div class="btn-group dropleft">
                          <button type="button" class="btn btn-outline-success dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {{Session::get('name')}}
                          </button>
                          <div class="dropdown-menu">
                            <a class="dropdown-item" href="logout">Logout</a>
                            <a class="dropdown-item" href="#">Ubah Password</a>
                          </div>
                        </div>
                        @endif
                    </ul>
                </div>

            </div>
        </nav>
    </div>
</div>