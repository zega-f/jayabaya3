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
    <!-- icon -->
    <link rel="stylesheet" type="text/css" href="{{ asset('public/ionicons/css/ionicons.min.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body class="bg-light">
<div class="bg-dark text-light">
    @include('user.navbar')
</div>
<div class="container" style="max-width: 500px; padding: 20px;">
    <form action="check_user_password" method="post" enctype="multipart/form-data">
    @csrf
        <div class="container shadow-sm" style="max-width: 445px; min-width: 300px; margin-left: auto; margin-right: auto; border-radius: 10px; padding: 20px; background-color: white; margin-top: 50px; margin-bottom: 50px;">
        <!-- <h4 align="center">Jaya<font color="green">baya</font><font style="color: #D8251C;">Bimbel</font></h4>
        <br> -->
            <h5 align="center">Hi {{Session::get('userName')}}</h5>
            <br>
            <p style="font-size: 12px;">Untuk melanjutkan, harap masukkan password anda</p>
            @if ($message = Session::get('fail'))
            <div class="alert alert-danger alert-sm">
                <p>{{ $message }}</p>
            </div>
            @endif
            <div class="input-group mb-1">
                <input type="password" name="password_verification" class="form-control" required>
            </div>
            <div class="input-group mb-1">
                <div class="row" style="width: 100%; margin-left: auto; margin-right: auto; margin-top: 20px;">
                    <div class="col-6" style="padding: 0;">
                        <a href="{{url('lupa_password')}}">Lupa Password?</a>
                    </div>
                    <div class="col-6" style="padding: 0;">
                        <button class="btn btn-primary btn-sm" style="float: right;">Verify</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
    @include('user.footer')
</body>
</html>

