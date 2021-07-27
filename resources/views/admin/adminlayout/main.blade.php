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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js" integrity="sha512-d9xgZrVZpmmQlfonhQUvTR7lMPtO7NkZMkA0ABN3PHCbKA5nqylQ/yWlFAyY6hYgdF1Qh6nYiuADWwKB4C2WSw==" crossorigin="anonymous"></script>
    <script src="https://js.pusher.com/7.0/pusher.min.js"></script>
      <script>
        var pusher = new Pusher('18367ead33873f6ed509', {
          cluster: 'ap1'
        });

        var channel = pusher.subscribe('online-course');
        channel.bind('App\\Events\\RegisterEvent', function(data) {
          $.ajax({
              type : 'get',
              url : '{{URL::to('unverified-user')}}',
              success:function(user)
              {
                $('#notif_count').css('display','block').html('!');
                if (user>0) {
                    $('#unverified_user').html('<a href="pendaftar-baru" style="color:white;">pendaftar kursus menunggu diverifikasi!</a>');
                }
              }
            });
        });
      </script>
    
    <style type="text/css">
        .sidebar{
            position: fixed;
            width: 250px;
            padding: 20px;
            height: 100vh;
            background: rgb(45,210,253);
            background: linear-gradient(43deg, rgba(45,210,253,1) 0%, rgba(34,124,195,1) 100%);
            z-index: 99;
        }
        .sidebar2{
            position: fixed;
            display: none;
            width: 250px;
            padding: 20px;
            height: 100vh;
            background: rgb(45,210,253);
            background: linear-gradient(43deg, rgba(45,210,253,1) 0%, rgba(34,124,195,1) 100%);
            z-index: 99;
        }
        .main{
            /*width: calc(100% - 200px);*/
            min-height: 100vh;
            margin-left: 250px;
            height: 100vh;
            
        }
        .box{
            background-color: 
            width: 100%;
            height: auto;
        }
        #header2nd{
            display: none;
        }
        
        @media only screen and (max-width: 600px) {
            #header2nd{
                display: block;
            }
            .sidebar{
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                z-index: 99;
            }
            .main{
                position: relative;
                margin-left: 0;
                width: 100%;
            }
        }
        /*@media only screen and (min-width: 601px) {
            #header2nd{
                display: block;
            }
            .sidebar{
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                z-index: 99;
            }
            .main{
                position: relative;
                margin-left: 0;
                width: 100%;
            }
        }*/
    </style>

</head>
<body class="bg-light">
    
    <div class="sidebar">
        @include('admin.component.sidebar')
    </div>
    <div class="sidebar2">
        @include('admin.component.sidebar')
    </div>
    <div class="main">
        @include('admin.component.navbar')
        <div class="container-fluid" style="padding: 20px; height: 100vh; ">
            @yield('content')
        </div>
    </div>

    

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
    <script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        $( document ).ready(function(){
            $.ajax({
              type : 'get',
              url : '{{URL::to('unverified-user')}}',
              success:function(user)
              {
                if (user>0) {
                    $('#notif_count').css('display','block').html('!');
                    $('#unverified_user').html('<a href="pendaftar-baru" style="color:white;">pendaftar kursus menunggu diverifikasi!</a>');
                }
              }
            });
        })
        $('#show-notifications').click(function(e){
            $('#notification').slideToggle();
            e.stopPropagation();
        })

        $('body').click(function(e){
            if (!$(e.target).is('.notification')) {
                $('#notification').slideUp();
            }
        })

        var dropdown = $('.dropdown-btn');
        var i;

        $('.dropdown-btn').click(function(){
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "block") {
                dropdownContent.style.display = "none";
            } else {
                dropdownContent.style.display = "block";
            }
        })
    </script>
    <script type="text/javascript">
        $(document).ready( function () {
            $('#myTable').DataTable();
        } );
    </script>
    
</body>
</html>

