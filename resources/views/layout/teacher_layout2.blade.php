<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script defer src="{{ asset('public/js/theme.js') }}"></script>
  <link href="{{ asset('public/css/style.css') }}" rel="stylesheet">
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700&display=swap"
    rel="stylesheet"
  />
  <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> -->
  <link href="{{ asset('public/css/web.css') }}" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="{{ asset('public/ionicons/css/ionicons.min.css') }}">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <script src="{{asset('public/ckeditor/ckeditor.js')}}"></script>   
</head>

<body>
  @include('user.teacher.component.resp_nav')
  <main style="position: absolute; top: 0;">
    <div class="content-box">
      <div class="box-left">
        @yield('content')
      </div>
      <div class="box-right">
        @yield('right_sidebar')
      </div>
    </div>
  </main>
  <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script> -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>