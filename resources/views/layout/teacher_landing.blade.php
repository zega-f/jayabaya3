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
    <script src="{{asset('public/tinymce/tinymce.min.js')}}"></script>
<!--     <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script> -->

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
    
    <style type="text/css">
        .badge{
            font-size: 14px;
            font-weight: normal;
        }
    </style>

</head>
<body class="bg-light">
@include('user.teacher.teacher_navbar')
<div class="container mt-3 mb-3">
	<div class="row">
		<div class="col-xl-2 col-lg-2">
            <div class="card mb-3 shadow">
                <div class="card-header bg-dark text-light">
                    Menu <span style="float: right;" class="pointer ion-android-menu" id="min"></span>
                </div>
                <div class="card-body" id="sidemenu" style="padding: 0;">
                    <ul class="list-group sidemenu_ul" style="font-size: 14px;">
                        <li class="list-group-item" id="all_bimbel"><a href="{{url('teacher')}}" style="text-decoration: none; color: black;">Semua Kelas</a></li>
                        <li class="list-group-item" id="materi"><a href="{{url('allMateriKelas')}}" style="text-decoration: none; color: black;">Semua Materi</a></li>
                        <li class="list-group-item" id="tugas"><a href="{{url('allTugasKelas')}}" style="text-decoration: none; color: black;">Semua Tugas</a></li>
                    </ul>
                </div>
            </div>
		</div>
		<div class="col-xl-10 col-lg-10">
            @yield('content')	
		</div>
	</div>
</div>

<div id="FormAddMateri" class="modal">
    @include('user.teacher.landingPage.addMateriForm')
</div>

<div id="FormEditMateri" class="modal">
    
</div>

<p align="center" style="font-size: 12px;">Copyright © 2020 arsha tech.</p>


    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
    <script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        var konten = document.getElementById("konten");
        CKEDITOR.replace(konten,{
        language:'en-gb'
      });
      CKEDITOR.config.allowedContent = true;
    </script>
     

    <script type="text/javascript">
        $(document).ready( function () {
            $('#myTable').DataTable();
        } );

        $('#close').click(function(){
            $('#FormAddMateri').fadeOut();
        })
        $('#closeTugas').click(function(){
            $('#form_materiTugas').fadeOut();
        })
        
    	$('#open_all_sch').click(function(){
    		$('#all_schedule').slideToggle('slow');
    	})
    	$('#min').click(function(){
            $('#sidemenu').slideToggle('fast')
        })
    </script>
    <script type="text/javascript">
    $(document).ready(function(){
        $('#_tk').css('display','none').prop('disabled',true);
        $('#_sd').css('display','none').prop('disabled',true);
        $('#_smp').css('display','none').prop('disabled',false);
        $('#_sma').css('display','none').prop('disabled',false);

        $('#jenjang').on('change',function(){
            var jenjang = $('#jenjang').val();
            if (jenjang=='') {
                // $('.sub_jenjang').prop('disabled',true);
            }
            if (jenjang=='1') {
                $('#_tk').css('display','block').prop('disabled',false);
                $('#_sd').css('display','none').prop('disabled',true);
                $('#_smp').css('display','none').prop('disabled',true);
                $('#_sma').css('display','none').prop('disabled',true);
            }
            if (jenjang=='2') {
                $('#_tk').css('display','none').prop('disabled',true);
                $('#_sd').css('display','block').prop('disabled',false);
                $('#_smp').css('display','none').prop('disabled',true);
                $('#_sma').css('display','none').prop('disabled',true);
            }
            if (jenjang=='3') {
                $('#_tk').css('display','none').prop('disabled',true);
                $('#_sd').css('display','none').prop('disabled',true);
                $('#_smp').css('display','block').prop('disabled',false);
                $('#_sma').css('display','none').prop('disabled',true);
            }
            if (jenjang=='4') {
                $('#_tk').css('display','none').prop('disabled',true);
                $('#_sd').css('display','none').prop('disabled',true);
                $('#_smp').css('display','none').prop('disabled',true);
                $('#_sma').css('display','block').prop('disabled',false);
            }
        })
    })
</script>

</body>
</html>

