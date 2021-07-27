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
    <script src="{{asset('public/ckeditor/ckeditor.js')}}"></script>
<!--     <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script> -->

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Styles -->
    <link href="{{ asset('public/css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/siswa.css') }}" rel="stylesheet">
    <!-- icon -->
    <link rel="stylesheet" type="text/css" href="{{ asset('public/ionicons/css/ionicons.min.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    

</head>
<body style="/*background: linear-gradient(90deg, #40A8C4 50%, #FFC93C 50%)*/;">
<div class="container-fluid" style="padding: 10px 10px; margin-top: 30px;">
    <div class="row" style="width: 100%; margin: 0 auto;">
        <div class="col-xl-2 col-lg-2 col-md-2">
            <div class="container mb-2" style="padding: 0;">
                <div class="sidebar">
              <a href="{{url('join_class/'.$program)}}" class="bg-secondary" style="/*background-color: #F9C03B;*/ color: white;"><b>Materi</b> <span class="ion-clipboard" style="font-size: 20px;"></span></a>
              <a href="{{url('all_tugas/'.$program)}}" class="bg-success" style="/*background-color: #F9C03B;*/ color: white;"><b>To do</b> <span class="ion-clipboard" style="font-size: 20px;"></span></a>
              <a href="{{url('all_quiz_siswa/'.$program)}}" class="bg-info" style="color: white;">Quiz <span class="ion-android-checkmark-circle" style="font-size: 20px;"></span></a>
              <a href="{{url('classmate/'.$program)}}" class="bg-warning" style="/*background-color: #272822;*/ color: white;">Classmate <span class="ion-android-contacts" style="font-size: 20px;"></span></a>
              <a href="#" class="bg-primary" style="/*background-color: #038387;*/ color: white">About this class <span class="ion-ios-information" style="font-size: 20px;"></span></a>
            </div>
            </div>
        </div>
        <div class="col-xl-8 col-lg-8 col-md-8">
            @yield('content')
        </div>
        <div class="col-xl-2 col-lg-2 col-md-2">
            @yield('right_sidebar')
        </div>
    </div>
</div>
<div class="chatroom">
    <?php  
        $thisClassURL = DB::table('tblcourse')->where('CourseName',$program)->value('courseMeetID');
    ?>
    <a href="{{url(thisClassURL)}}" target="_blank" class="btn btn-info btn-lg" style="padding: 20px 50px;"><span class="ion-ios-videocam"></span> Chatroom <button class="btn btn-sm" id="close">></button></a>
</div>
<div class="modalmadil" id="show_attch_modal">
    
</div>

<script type="text/javascript">
    $('#close').click(function(){
        // $('#alert').css('display','none');
        $('#alert').toggle('slow');
    });
</script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
    
</body>
</html>
