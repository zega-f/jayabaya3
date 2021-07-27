@extends('admin.adminlayout.main')
@section('content')
<?php  
	$englishUser = DB::table('tblcourseuser')->where('course','english')->count();
	$mathUser = DB::table('tblcourseuser')->where('course','math')->count();
	$classUser = DB::table('tblcourseuser')->where('course','class')->count();

	$classUserYear = DB::table('tbluser')->select('created_at')->get();

	$all_year = array();

	foreach ($classUserYear as $year) {
		$all_year[]  = array('created_at' => substr($year->created_at, 0,4));;
	}

	// echo json_encode($all_year);

	// echo json_encode($all_year);
	$year_json = json_encode($all_year);

	// echo $year_json;

	$thisyear = date('Y');

	// foreach ($all_user as $user) {
	// 	$bulan = substr($user->created_at, 5,2);
	// 	$zero = stripos($bulan, '0');
	// 	$msg = '';
	// 	if (strpos($bulan, '0')==1) {
	// 			$msg = $bulan;
	// 		}elseif (strpos($bulan, '0')==0) {
	// 			$msg = str_replace('0', '', $bulan);
	// 		}else{
	// 			$msg = '$bulan';
				
	// 		}

	// 	DB::table('tbluser')->where('id',$user->id)
	// 	->update([
	// 		'month_created'=>$msg,
	// 		'year_created'=>substr($user->created_at, 0,4)
	// 	]);
	// }

?>
<script type="text/javascript">
</script>
<div class="container-fluid shadow rounded mb-3" style="background-color: white; padding: 20px;">
	<div class="row">
		<div class="col-6">
			<h5>User Statistic</h5>
		</div>
		<div class="col-6">
			<span>
				<select class="form-control" style="width: 200px; margin-left: auto;">
					
					<option>Siswa</option>
					<option>Pengajar</option>
				</select>
			</span>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-4">
			<div class="container bg-success rounded shadow-sm" style="padding: 20px; color: white;">
				<a href="{{url('peserta-bimbel/english')}}" target="_blank" style="color: white;"><strong>Bahasa Inggris</strong></a>
				<hr>
				<h3>{{$englishUser}}</h3> Siswa
			</div>
		</div>
		<div class="col-4">
			<div class="container bg-warning rounded shadow-sm" style="padding: 20px; color: white;">
			<a href="{{url('peserta-bimbel/math')}}" target="_blank" style="color: white;"><strong>Matematika</strong></a>
			<hr>
			<h3>{{$mathUser}}</h3> Siswa
			</div>
		</div>
		<div class="col-4">
			<div class="container bg-info rounded shadow-sm" style="padding: 20px; color: white;">
			<a href="{{url('peserta-bimbel/class')}}" target="_blank" style="color: white;"><strong>Program Kelas</strong></a>
			<hr>
			<h3>{{$classUser}}</h3> Siswa
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-xl-6 col-lg-6 col-md-6">
			<b>Pendaftar</b> 
			<span style="float: right;">
				<select class="form-control form-control-sm" id="year">
					<option>{{$thisyear}}</option>
					<option>2020</option>
					<option>2021</option>
				</select>
			</span>
			<div id="linechart">
				
			</div>
		</div>
		<div class="col-xl-6 col-lg-6 col-md-6">
			<b>Siswa</b>
			<canvas id="myChart" style="height: 400px; width: 100%;"></canvas>
			<script>
			var ctx = document.getElementById('myChart').getContext('2d');
			var math = '{{$mathUser}}';
			var english = '{{$englishUser}}';
			var classUser  = '{{$classUser}}';
			var myChart = new Chart(ctx, {
			    type: 'bar',
			    data: {
			        labels: ['Siswa'],
			        datasets: [{
			            label: ['Bahasa Inggris'],
			            data: [english],
			            backgroundColor: [
			                'rgba(255, 99, 132, 0.2)',
			            ],
			            borderColor: [
			                'rgba(255, 99, 132, 1)',
			            ],
			            borderWidth: 1
			        },
			        {
			            label: 'Matematika',
			            data: math,
			            backgroundColor: [
			                'rgba(54, 162, 235, 0.2)',
			            ],
			            borderColor: [
			                'rgba(54, 162, 235, 1)',
			            ],
			            borderWidth: 1
			        },
			        {
			            label: 'Program Kelas',
			            data: classUser,
			            backgroundColor: [
			                'rgba(255, 206, 86, 0.2)',
			            ],
			            borderColor: [
			                'rgba(255, 206, 86, 1)',
			            ],
			            borderWidth: 1
			        }]
			    },
			    options: {
			        scales: {
			            yAxes: [{
			                ticks: {
			                    beginAtZero: true
			                }
			            }]
			        }
			    }
			});
			</script>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready( function () {
		var year = '{{$thisyear}}';
	    $('#myTable').DataTable();
	    $.ajax({
        type : 'get',
        url : '{{URL::to('linechart')}}',
        data: {year:year},
        success:function(data)
        {
          $('#linechart').html(data);
        }
      });
	} );

	$('#year').on('change',function(){
		var year = $(this).val();
	    $('#myTable').DataTable();
	    $.ajax({
        type : 'get',
        url : '{{URL::to('linechart')}}',
        data: {year:year},
        success:function(data)
        {
          $('#linechart').html(data);
        }
      });
	})
</script>

<script type="text/javascript">
  $(document).ready(function(){
    $('.edit').click(function(){
      var pendaftar_id = $(this).data('id');;
      $.ajax({
        type : 'get',
        url : '{{URL::to('verifikasi_new')}}',
        data: {pendaftar_id:pendaftar_id},
        success:function(data)
        {
          $('#form-pendaftar').html(data);
        }
      });
    })
  })
</script>
<script type="text/javascript">
    $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
</script>
@endsection




