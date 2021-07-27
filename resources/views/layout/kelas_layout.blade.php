<!doctype html>

<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{$title}} - Jayabaya Bimbel</title>

    <!-- Scripts -->
    <!-- <script src="{{ asset('public/js/app.js') }}" defer></script> -->
    <script src="{{asset('public/ckeditor/ckeditor.js')}}"></script>
<!--     <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script> -->

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
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    

</head>
<body class="bg-light">
@include('user.teacher.teacher_navbar')
    <div class="container mt-4 mb-3">
        <div class="row">
            <div class="col-xl-2 col-lg-2">
                <div class="container mb-2 shadow-sm" style="padding: 0;">
                    <ul class="list-group sidemenu_ul" style="font-size: 14px;">
                        <li class="list-group-item" id="materi"><a href="{{url('teacherEnterClass/'.$id_kelas)}}" style="color: black;">Materi</a></li>
                        <li class="list-group-item" id="tugas"><a href="{{url('teacherClass/'.$id_kelas.'/tugas')}}" style="color: black;">Tugas</a></li>
                        <li class="list-group-item" id="siswa"><a href="{{url('teacherClass/siswa/'.$id_kelas)}}" style="color: black;">Siswa</a></li>
                        <li class="list-group-item"><a href="#" style="color: black;">Ujian</a></li>
                        <li class="list-group-item"><a href="{{url('thisClassJadwal/'.$id_kelas)}}" style="color: black;">Jadwal</a></li>
                    </ul>
                </div>

                <script type="text/javascript">
                    $('#min').click(function(){
                        $('#sidemenu').slideToggle('fast')
                    })
                </script>
            </div>
            <div class="col-xl-10 col-lg-10">
                @yield('content')
            </div>
            <!-- <div class="col-xl-2 col-lg-2"></div> -->
        </div>
    </div>

    <div class="modal2" id="show_attch_modal">
        
    </div>
    <div class="modal" id="modal_add_nilai">
      
    </div>

    <div id="FormEditMateri" class="modal">
        
    </div>
    <p align="center" style="font-size: 12px; position: fixed; bottom: 0; left: 0; right: 0;">Copyright © 2020 arsha tech.</p>


    <script src="{{url('public/js/bootstrap.min.js')}}"></script>
    <script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
    <script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        $('#close').click(function(){
            $('#form_materiKelas').fadeOut();
        })
        $('#closeTugas').click(function(){
            $('#form_materiTugas').fadeOut();
        })
    </script>
    <script type="text/javascript">
        var konten = document.getElementById("konten_kelas");
        CKEDITOR.replace(konten,{
        language:'en-gb'
      });
      CKEDITOR.config.allowedContent = true;
    </script>
    <script type="text/javascript">
        var konten_tugas = document.getElementById("konten_tugas");
        CKEDITOR.replace(konten_tugas,{
        language:'en-gb'
      });
      CKEDITOR.config.allowedContent = true;
    </script>

    

</body>
</html>
