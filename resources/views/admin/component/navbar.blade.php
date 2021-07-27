<nav class="navbar navbar-expand-md navbar-light shadow-sm" style="background-color: white;">
    <div class="container-fluid" style="width: 100%; ">
        <div id="header2nd">
            <h5><span class="ion-android-menu" id="maximize_sidebar" style="cursor: pointer;"></span> Jayabaya Bimbel</h5>
        </div>
        <button class="btn btn-info btn-sm mr-2" style="display: inline-block; position: relative;" id="show-notifications">
            <i class="ion-android-notifications"></i>
            <span style="position: absolute; top: -10px; right: -10px; padding: 2px 4px; border-radius: 50%; background: red; color: white; font-size: 10px; display: none;" id="notif_count">
                    
                </span>
        </button>
        <div class="container shadow rounded bg-dark text-light notification" id="notification" style="max-width: 300px; position: absolute; background-color: white; z-index: 99; left: 25px; top: 50px; padding: 20px; font-size: 12px; display: none;">
            <h5>Notification</h5>
            <hr style="margin: 30px auto;">
            <div class="container" id="unverified_user" style="max-height: 500px; overflow: auto; padding: 0;">
                
            </div>
        </div>
        <!-- <a class="navbar-brand" href="{{ url('/') }}">
            Welcome 
        </a> -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    
                </li>
                <li class="nav-item">
                    <!-- Authentication Links -->
                   @if(Session::get('login')==TRUE)
                    <div class="btn-group dropleft">
                      <button type="button" class="btn btn-success dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        {{Session::get('name')}}
                      </button>
                      <div class="dropdown-menu">
                        <a class="dropdown-item" href="{{url('logout')}}">Logout</a>
                        <a class="dropdown-item" href="{{url('admin_change_password')}}">Ubah Password</a>
                      </div>
                    </div>
                    @endif
                </li>
            </ul>
        </div>
        

    </div>
</nav>
<script type="text/javascript">
    $('#maximize_sidebar').click(function(){
        $('#header2nd').fadeOut();
        $('.sidebar').css('display','block');
        $('.main').css('margin-left','250px');
    });
    // $('#maximize_sidebar').click(function(){
    //     if (screen_size_now <= 600 ) {
    //         $('#header2nd').fadeOut();
    //         $('.sidebar').css('display','block');
    //         $('.main').css('margin-left','0');
    //     }else{
    //         $('#header2nd').fadeOut();
    //         $('.sidebar').css('display','block');
    //         $('.main').css('margin-left','250px');
    //     }
    // })
</script>