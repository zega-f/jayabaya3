<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- <script defer src="{{ asset('public/js/theme.js') }}"></script> -->
  <title>Siswa - Jayabaya Bimbel</title>
  <link href="{{ asset('public/css/style.css') }}" rel="stylesheet">
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700&display=swap"
    rel="stylesheet">
  <!-- icon -->
  <link rel="stylesheet" type="text/css" href="{{ asset('public/ionicons/css/ionicons.min.css') }}">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
</head>
<style type="text/css">
  :root{
    --width: 100%;
  }
</style>

<body>
  @include('user.siswa.siswa_navbar')
  <main>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">{{$program}}</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <ul class="navbar-nav ml-auto " style="font-size: 14px;">
                  <!-- Authentication Links -->
                 <li><a href="{{url('home')}}" class="btn btn-sm"><u>Home</u></a></li>
                 
                @if(Session::get('login')==TRUE)
                <li>
                  <a class="btn btn-warning btn-sm mr-2" href="{{url('user')}}" style="color: black; font-size: 14px;">All Course</a>
                </li>
                <li>
          <div class="btn-group dropleft">
            
            <button type="button" class="btn btn-success dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              {{Session::get('userName')}}              
            </button>
            <div class="dropdown-menu">
              <a href="{{url('user_activity')}}" class="dropdown-item" style="font-size: 14px;">Your Activity</a>
              <a class="dropdown-item" href="{{url('change_password')}}" style="color: black; font-size: 14px;">Ubah Password</a>
              <a class="dropdown-item" href="{{url('edit_profile')}}" style="color: black;font-size: 14px;">Edit Profile</a>
             <a class="dropdown-item" href="{{url('logout_user')}}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" style="color: black;">Logout</a>
                      <form id="logout-form" action="{{url('logout_user')}}" method="POST" style="display: none;">
                          @csrf
                      </form>
            </div>
          </div>
          @endif

               @if(Session::get('login')==FALSE)
               <a href="login" class="btn btn-dark btn-sm">Daftar / Masuk</a>
               </li>
               @endif
               
            </ul>
        </div>
      </nav>
    <div class="row mt-3">
      <div class="col-xl-10 col-lg-10 col-md-8">
        @yield('content')
      </div>
      <div class="col-xl-2 col-lg-2 col-md-4">
        @yield('right_sidebar')
        <?php  
          $thisClassURL = DB::table('tblcourse')->where('CourseName',$program)->value('courseMeetID');
          if ($thisClassURL) {
            $thisClassURL = $thisClassURL;
          }else{
            $thisClassURL = '#';
          }
        ?>
        <div class="chatroom">
            <a href="{{url($thisClassURL)}}" target="_blank" class="btn btn-info btn-lg mt-2 mb-2" style="padding: 20px 50px;">Chatroom</button></a>
        </div>
      </div>
    </div>
    
  </main>
@include('user.footer')
  <div class="modal_attch" id="show_attch_modal">
    
  </div>

  <!--Start of Tawk.to Script-->
    <script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/5f0c53d55b59f94722baa002/default';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
    })();
    </script>
    <!--End of Tawk.to Script-->

  <script type="text/javascript">
    $('#add_materi_btn').click(function(){
      $('.card').css('background-color','red');
    })
  </script>

  <script type="text/javascript">
    $('.dropdown').click(function(){
      $('.dropdown-content').toggle();
    });
  </script>
  
  <script src="{{asset('public/js/bootstrap.min.js')}}"></script>
</body>
</html>