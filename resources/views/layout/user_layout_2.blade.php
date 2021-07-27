<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Jayabaya Bimbel</title>

    <!-- Scripts -->
    <script src="{{ asset('public/js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Styles -->
    <link href="{{ asset('public/css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/web.css') }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/ionicons/css/ionicons.min.css') }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    

</head>
<body>
@include('user.navbar')
    @yield('content')
@include('user.footer')

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>

    <script type="text/javascript">
    $(document).ready(function(){
        $('#_tk').hide().prop('disabled',true),
          $('#_sd').hide().prop('disabled',true),
          $('#_smp').hide().prop('disabled',true),
          $('#_sma').hide().prop('disabled',true);
      });

    function selected_opt(){
      var sekolah = $( "#jenjang" ).val();
          if (sekolah == "1") {
              $('#_tk').show().prop('disabled',false),
              $('#_sd').hide().prop('disabled',true),
              $('#_smp').hide().prop('disabled',true),
              $('#_sma').hide().prop('disabled',true);
          }
          if (sekolah == "2") {
              $('#_tk').hide().prop('disabled',true),
              $('#_sd').show().prop('disabled',false),
              $('#_smp').hide().prop('disabled',true),
              $('#_sma').hide().prop('disabled',true);
          }
          if (sekolah == "3") {
              $('#_tk').hide().prop('disabled',true),
              $('#_sd').hide().prop('disabled',true),
              $('#_smp').show().prop('disabled',false),
              $('#_sma').hide().prop('disabled',true);
          }
          if (sekolah == "4") {
              $('#_tk').hide().prop('disabled',true),
              $('#_sd').hide().prop('disabled',true),
              $('#_smp').hide().prop('disabled',true),
              $('#_sma').show().prop('disabled',false);
          }
        }
         
        $("#jenjang").change(selected_opt );
        selected_opt();
    </script>
</body>
</html>
