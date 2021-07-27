@extends('admin.adminlayout.main')
@section('content')

<div class="container-fluid shadow rounded" style="background-color: white; padding: 20px;">
	<h5>
		<strong>
		<!-- {{$id_kelas}} -->
		@foreach($nama_kelas as $k)
		@if($k->base_name==1)
			TK{{$k->sub_name}}{{$k->class_name}} Region : {{$k->region}}
		@elseif($k->base_name==2)
			SD{{$k->sub_name}}{{$k->class_name}} Region : {{$k->region}}
		@elseif($k->base_name==3)
			SMP{{$k->sub_name}}{{$k->class_name}} Region : {{$k->region}}
		@else
			SMA{{$k->sub_name}}{{$k->class_name}} Region : {{$k->region}}
		@endif
		@endforeach
		</strong>
	</h5>
	<hr>
	<div class="row">
		<div class="col-md-6">
			<div class="card mb-3 shadow-sm border-light">
				<div class="card-header bg-success">
					<strong style="color: white;">Data Siswa Aktif</strong>
				</div>
				<div id="siswa_aktif">
					@include('admin.component.active_user')
				</div>
			</div>
		</div>
		<div class="col-xl-6 col-lg-6 col-md-6">
			<div class="card mb-3 shadow-sm border-light">
				<div class="card-header bg-secondary">
					<strong style="color: white;">Data Siswa</strong>
				</div>
				<div id="siswa_inaktif">
					@include('admin.component.inactive_user')
				</div>
			</div>
		</div>
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="card mb-3 shadow-sm border-light">
				<div class="card-header bg-info">
					<strong style="color: white;">Data Mapel Aktif</strong>
				</div>
				<div class="card-body" style="overflow: auto;">
					<button class="btn btn-primary btn-sm mb-3" id="add_mapel_into_class">Tambah Mapel</button>
					<div class="container" id="add_mapel_box" style="display: none;">
						<form action="{{url('store_jadwal/'.$id_kelas.'/'.$jenjang.'/'.$tingkat)}}" method="post" id="mapel_form">
							@csrf
							<div class="input-group mb-3">
								<select class="form-control form-control-sm border-light shadow-sm" required name="mapel" id="mapel" style="height: 50px;">
									<option value="" selected="">Pilih Mapel</option>
									@foreach($all_mapel as $mapel)
									<option value="{{$mapel->id}}">{{$mapel->nama}}</option>
									@endforeach
								</select>
							</div>
							<div class="input-group mb-3">
								<select class="form-control form-control-sm border-light shadow-sm" required name="teacher_list" id="teacherlist" style="height: 50px;">
									<option value="" selected>Pilih pengajar</option><option>
								</select>
							</div>
							<div class="input-group mb-3">
								<select name="hari" class="form-control form-control-sm border-light shadow-sm" required style="height: 50px;">
									<option value="" selected>Pilih Hari</option>
									<option value="1">Senin</option>
									<option value="2">Selasa</option>
									<option value="3">Rabu</option>
									<option value="4">Kamis</option>
									<option value="5">Jumat</option>
								</select>
							</div>
							<!-- <div class="input-group mb-3"> -->
								<div class="row mb-3">
									<div class="col">
										<label>Waktu (Mulai)</label>
										<input type="time" name="waktu" class="form-control form-control-sm border-light shadow-sm" required style="height: 50px;">
									</div>
									<div class="col">
										<label>Waktu (Akhir)</label>
										<input type="time" name="waktuEnd" class="form-control form-control-sm border-light shadow-sm" required style="height: 50px;">
									</div>
								</div>
							<!-- </div> -->
							<button class="btn btn-secondary btn-sm mb-3" type="reset">Reset</button>
							<button class="btn btn-primary btn-sm mb-3" type="submit">Save</button>
							<hr>
						</form>
					</div>
					<table id="myTable3" class="table" style="font-size: 14px;">
					<thead class="thead-dark">
						<tr>
							<th>No.</th>
							<th>Waktu</th>
							<th>Nama</th>
							<th>Pengajar</th>
							<th>Meet URL</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$i=1;
							$i<=count($jadwal_kelas);
							foreach($jadwal_kelas as $jadwal){
						 ?>
						
							<tr id="row_jadwal{{$jadwal->id}}">
								<td>
									<?=$i?>
								</td>
								<td>
									@if($jadwal->hari==1)
									Senin
									@elseif($jadwal->hari==2)
									Selasa
									@elseif($jadwal->hari==3)
									Rabu
									@elseif($jadwal->hari==4)
									Kamis
									@else
									Jumat
									@endif
								 {{$jadwal->waktu}}</td>
								 <td>{{$jadwal->nama}}</td>
								 <td>
								 	<?php 
								 		$teacher = DB::table('tbluser')->where('id_user',$jadwal->teacher_id)->value('UserName');
								 		echo $teacher;
								 	 ?>
								 </td>
								 <td>
								 	<div class="meetNow" id="meetNow{{$jadwal->id}}" data-id="{{$jadwal->id}}" data-url="{{$jadwal->meetID}}">
								 	@if($jadwal->meetID==null)
								 	<i style="color: grey;">Null</i>
								 	@else
								 	{{$jadwal->meetID}}
								 	@endif
								 	</div>

								 	<input type="text" name="meetEdit" class="form-control form-control-sm meetEdit" id="meetEdit{{$jadwal->id}}" data-id="{{$jadwal->id}}" required style="display: none;" value="{{$jadwal->meetID}}">
								 	<span class="ion-alert-circled text-danger" id="alert{{$jadwal->id}}" style="display: none;">URL yang anda inputkan nampaknya tidak valid!</span>
								 </td>
								 <td><button class="btn btn-danger btn-sm remove_mapel" data-id2="{{$jadwal->id}}" id="remove_mapel{{$jadwal->id}}">Remove</button>
								 	@if($jadwal->aktif==1)
								 	<button class="btn btn-success btn-sm aktif_mapel">Aktif</button>
								 	<button class="btn btn-success btn-sm non_aktif_mapel" disabled style="display: none;">Non-aktif</button>
								 	@else
								 	<button class="btn btn-success btn-sm aktif_mapel" disabled style="display: none;">Aktif</button>
								 	<button class="btn btn-success btn-sm non_aktif_mapel">Non-aktif</button>
								 	@endif
								 </td>
							</tr>
						<?php
							$i++; 
							}
						 ?>
					</tbody>
				</table>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$('.meetEdit').on('keyup',function(){
		var id = $(this).data('id');
		var url = $(this).val();
		$.ajax({
        type : 'get',
        url : '{{URL::to('validateMeetURL')}}',
        data: {url:url},
        success:function(data)
        {
        	if (data==0) {
        		$('#alert'+id).css('display','block');
        	}else{
        		$('#alert'+id).css('display','none');
        	}
        }
      });
	})

	$('.meetNow').click(function(){
		var id = $(this).data('id');
		// var meetNow = $(this).();
		$(this).css('display','none');
		$('#meetEdit'+id).css('display','block');

	})

	$('.meetEdit').keypress(function(e){
		var id = $(this).data('id')
		var key = e.which;
		var newMeet = $(this).val();
		if(key == 13) {
			if (newMeet=='') {
				$('#alert'+id).css('display','none');
				$('#meetEdit'+id).css('display','none').val('Null');
				$('#meetNow'+id).css('display','block').html('Null');
			}else{
				$.ajax({
		        type : 'post',
		        url : '{{URL::to('storeMeet')}}',
		        data: {"_token":"{{ csrf_token() }}",idMapel:id,meetNow:newMeet},
		        success:function(data)
		        {
		        	if (data=='1') {
		        		$('#meetEdit'+id).css('display','none').val(newMeet);
						$('#meetNow'+id).css('display','block').text(newMeet);
		        	}

		        }
		      });
			}
		}
	})
	$('#mapel').change(function(){
		var mapel_id = $(this).val();
		$.ajax({
        type : 'get',
        url : '{{URL::to('teacher_list')}}',
        data: {mapel_id:mapel_id},
        success:function(data)
        {
          $('#teacherlist').html(data);
        }
      });
	});

	$('.remove_mapel').click(function(){
		var jadwal_id = $(this).data('id2');
		if (confirm('Apakah anda yakin?')) {
			$.ajax({
		        type : 'get',
		        url : '{{URL::to('del_mapel')}}',
		        data: {jadwal_id:jadwal_id},
		        success:function(data)
		        {
		          $('#row_jadwal'+jadwal_id).css('display','none');
		        }
		      });
		}else{

		}
	});
</script>


<!-- <script type="text/javascript">

	$(document).ready(function(){
		var id_kelas = '{{$id_kelas}}';
		$.ajax({
        type : 'get',
        url : '{{URL::to('siswa_aktif')}}',
        data: {id_kelas:id_kelas},
        success:function(data)
        {
          $('#siswa_aktif').html(data);
        }
      });
	})

	$(document).ready(function(){
		var id_kelas = '{{$id_kelas}}';
		$.ajax({
        type : 'get',
        url : '{{URL::to('siswa_inaktif')}}',
        data: {id_kelas:id_kelas},
        success:function(data)
        {
          $('#siswa_inaktif').html(data);
        }
      });
	})
</script> -->

<script type="text/javascript">
	
</script>


<script type="text/javascript">
	$('#add_mapel_into_class').click(function(){
		$('#add_mapel_box').slideToggle( "fast" );
	});
</script>

<script type="text/javascript">
	$(document).ready( function () {
	    $('#myTable3').DataTable();
	} );
</script>

<script type="text/javascript">
  $(document).ready(function(){
  	$('.add_2_class').on('click',function(){
		var siswa_id = $(this).data('idsiswa');
		$('add_2_class'+siswa_id).css('display','none');
	})
	
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