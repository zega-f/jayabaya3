<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="icon" href="{{ asset('public/img/3.jpg') }}">

    <title>Jayabaya Bimbel</title>

    <!-- Scripts -->
    <!-- <script src="{{ asset('public/js/app.js') }}" defer></script> -->

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Styles -->
    <link href="{{ asset('public/css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/web.css') }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/ionicons/css/ionicons.min.css') }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    
    

</head>
<body>
    <div class="container-fluid center" style="margin:0; width: 100%;">
        <div class="row">
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
                                    <a class="dropdown-item" href="{{url('logout')}}">Logout</a>
                                    <a class="dropdown-item" href="{{url('admin_change_password')}}">Ubah Password</a>
                                  </div>
                                </div>
                                @endif
                            </ul>
                        </div>

                    </div>
                </nav>
            </div>
        </div>
        <div class="row" style=" height: 100%; position: absolute; left: 0; width: 100%; ">
            <div class="col-xl-2 col-expand-md" style=" font-size: 14px; padding: 20px; background-color: #F9FAFC; height: auto;">
            <div class="sidenav">
            @if(Session::get('level')==1)
            <a href="{{url('kelola_admin')}}">Manage Admin</a>
            @endif
            <button class="dropdown-btn"><span class="ion-cube"></span> Data Master<i class="fa fa-caret-down"></i></button>
            <div class="dropdown-container">
            <a href="#">Atur Tahun</a>
            <a href="#">Atur Kelas</a>
            <a href="#">Atur Jadwal</a>
            </div>

            <a href="{{url('admin')}}"><span class="ion-ios-people"></span> Data Pengajar</a>

            <button class="dropdown-btn"><span class="ion-ios-people"></span> Peserta Kursus 
            <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-container">
            <a href="{{url('peserta-bimbel/class')}}">Peserta Bimbel</a>
            <a href="{{url('peserta-english/english')}}">Peserta Bhs. Inggris</a>
            <a href="{{url('peserta-math/math')}}">Peserta Matematika</a>
            </div>
            
            <button class="dropdown-btn"><span class="ion-university"></span> Pelajaran
            <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-container">
            <a href="{{url('mapel')}}">Mata Pelajaran</a>
            <a href="#">Materi Bahasa Inggris</a>
            <a href="#">Materi Matematika</a>
            </div>

            <a href="{{url('jadwal_pelajaran')}}"><span class="ion-clipboard"></span> Jadwal Pelajaran</a>
            <a href="{{url('pendaftar-baru')}}"><span class="ion-ios-personadd"></span> Pendaftar Baru</a>
            <a href="{{url('kelas')}}"><span class="ion-ios-personadd"></span> Atur Kelas</a>
            </div>
                
            </div>
            <div class="col-xl-10" style="overflow: auto; height: 570px; padding-left: 10px; ">
                <div class="container-fluid" styl="padding:20px; margin:20px;">
                    @yield('content')
                </div>
            </div>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
    <script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    
    
    
</body>
</html>
<script type="text/javascript">
    var dropdown = document.getElementsByClassName("dropdown-btn");
    var i;

    for (i = 0; i < dropdown.length; i++) {
      dropdown[i].addEventListener("click", function() {
      this.classList.toggle("active");
      var dropdownContent = this.nextElementSibling;
      if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
      } else {
      dropdownContent.style.display = "block";
      }
      });
    }
</script>



<script type="text/javascript">

    $(document).ready(function(){
        $('#teacher_email').on('keyup',function()
          {
            var email = $('#teacher_email').val();
            $.ajax({
              type : 'get',
              url : '{{URL::to('email_check')}}',
              data: {email:email},
              success:function(data)
              {
                $('#alert_email').html(data);
              }
            });
          })
    })
</script>

<script type="text/javascript">
  $(document).ready(function(){
    $('#hide-sen').click(function(){
      $('#senin').toggle('fast');
    })
    $('#hide-sel').click(function(){
      $('#selasa').toggle('fast');
    })
    $('#hide-rab').click(function(){
      $('#rabu').toggle('fast');
    })
    $('#hide-kam').click(function(){
      $('#kamis').toggle('fast');
    })
    $('#hide-jum').click(function(){
      $('#jumat').toggle('fast');
    })
    $('#hide-sab').click(function(){
      $('#sabtu').toggle('fast');
    })
  })
</script>

