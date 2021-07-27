@extends('admin.adminlayout.main')
@section('content')
	<div class="container-fluid shadow mb-3 rounded" style="font-size: 14px; padding: 20px; background-color: white;">
		<!-- <h5><strong>Semua Kelas</strong></h5> -->
		<h5>Kursus</h5>
		<hr>
		<button class="btn btn-primary btn-sm shadow mb-3" id="addKursus">Tambah Kursus</button>
		<div class="modal" id="addKursusModal">
			<div class="container mt-5 rounded" style="max-width: 500px; padding: 20px; background-color: white;">
				Tambah Kursus <span class="ion-android-close pointer" id="close" style="float: right;"></span>
				<hr>
				<form action="{{url('add_kursus')}}" method="post" enctype="multipart/form-data">
					@csrf
					<div class="form-group mb-3">
						<label>Nama Kursus</label>
						<input type="text" name="nama_kursus" class="form-control" placeholder="E.g. Matematika">
					</div>
					<div class="form-group mb-3">
						<label>Deskripsi Kursus</label>
						<textarea class="form-control" name="description" style="height: 200px;">
							
						</textarea>
					</div>
					<button class="btn btn-primary btn-sm" type="submit">Simpan</button>
					<button class="btn btn-warning btn-sm" type="reset">Reset</button>
				</form>
			</div>v
		</div>
		<?php  
			$allKursus = DB::table('tblcourse')->where('CourseName','!=','class')->get();
		?>
		<table class="table" id="myTable2">
			<thead class="thead-dark">
				<tr>
					<th>Nama</th>
					<th>Tingkat</th>
					<th>Jenjang</th>
					<th>Siswa</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				@foreach($allKursus as $kursus)
				<tr>
					<td>{{$kursus->CourseName}}</td>
					<td>Semua Tingkat</td>
					<td>Semua Jenjang</td>
					<td>
						<?php  
							$thisClassSiswa = DB::table('tblcourseuser')->where('course',$kursus->CourseName)->count();
						?>
						{{$thisClassSiswa}}
					</td>
					<td>
						<a href="{{url('kelolaKursus/'.$kursus->CourseName)}}" class="btn btn-info btn-sm">Kelola</a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
		</div>

		<div class="container-fluid shadow mb-3 rounded" style="font-size: 14px; padding: 20px; background-color: white;">
		<h5>Kelas</h5>
		<hr>
		<button id="add_kelas" class="btn btn-primary btn-sm mb-3 shadow">Tambah Kelas</button>
		@if(count($kelas)<=0)
			<div class="alert alert-info mt-3">
				<p>Belum terdapat data Kelas</p>
			</div>
		@else
		<table class="table" id="myTable">
			<thead class="thead-dark">
				<tr>
					<th>Nama</th>
					<th>Tingkat</th>
					<th>Jenjang</th>
					<th>Siswa</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				@foreach($kelas as $k)
				<tr>
					<td>
						@if($k->base_name==1)
							TK{{$k->sub_name}}{{$k->class_name}} {{$k->region}}
						@elseif($k->base_name==2)
							SD{{$k->sub_name}}{{$k->class_name}} {{$k->region}}
						@elseif($k->base_name==3)
							SMP{{$k->sub_name}}{{$k->class_name}} {{$k->region}}
						@else
							SMA{{$k->sub_name}}{{$k->class_name}} {{$k->region}}
						@endif
					</td>
					<td>
						@if($k->tingkat==1)
						TK
						@elseif($k->tingkat==2)
						SD
						@elseif($k->tingkat==3)
						SMP
						@else
						SMA
						@endif
					</td>
					<td>
						@if($k->tingkat==1)
							@if($k->jenjang==1)
							TK-A
							@else
							TK-B
							@endif
						@else
							Kelas {{$k->jenjang}}
						@endif
					</td>
					<td>
						<?php 
							$siswa_count = DB::table('tblcourseuser')
							->where('class_id',$k->id)
							->count();
							echo $siswa_count;
						 ?>
					</td>
					<td>
						<a href="kelas/kelola/{{$k->id}}/{{$k->tingkat}}/{{$k->jenjang}}" class="btn btn-info btn-sm">Kelola</a>
						@if($k->aktif==1)
						<a href="#" class="btn btn-success btn-sm aktif" id="aktif{{$k->id}}" data-id="{{$k->id}}">Aktif</a>
						<a href="#" class="btn btn-warning btn-sm non_aktif" id="non_aktif{{$k->id}}" data-id="{{$k->id}}" style="display: none;">Non-aktif</a>
						@else
						<a href="#" class="btn btn-warning btn-sm non_aktif" id="non_aktif{{$k->id}}" data-id="{{$k->id}}">Non-aktif</a>
						<a href="#" class="btn btn-success btn-sm aktif" id="aktif{{$k->id}}" style="display: none;" data-id="{{$k->id}}">Aktif</a>
						@endif
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
		@endif
	</div>


<div id="modal_add_kelas" class="modal">
	<div class="container rounded mt-3 mb-3 shadow" style="max-width: 500px; padding: 20px; background-color: white;">
		Tambah Kelas <span style="float: right;" class="pointer ion-android-close" id="close"></span>
		<hr>
		<form action="{{url('store_kelas')}}" method="post" id="add_kelas_form" enctype="multipart/form-data"> 
			@csrf
			<div class="form-group mb-3">
				<label>Jenjang</label>
				<select class="form-control form-control-sm border-light shadow-sm" style="height: 50px;" id="jenjang" name="jenjang" required>
					<option value="" selected="">Pilih Jenjang</option>
					<option value="1">TK/PAUD</option>
					<option value="2">Sekolah Dasar</option>
					<option value="3">Sekolah Menengah Pertama</option>
					<option value="4">Sekolah Menengah Atas</option>
				</select>
			</div>
			<div class="input-group mb-3" id="sub_jenjang_div" style="display: none;">
				<select class="form-control form-control-sm border-light shadow-sm sub_jenjang" style="height: 50px;" id="_tk" name="sub_jenjang" required style="display: none;" disabled>
                    <option value="" selected>Pilih tingkat TK/PAUD</option>
                    <option value="1">TK A</option>
                    <option value="2">TK B</option>
                </select>
                <select class="form-control form-control-sm border-light shadow-sm sub_jenjang" style="height: 50px;" id="_sd" name="sub_jenjang" required style="display: none;" disabled>
                    <option value="" selected>Pilih tingkat SD</option>
                    <option value="1">SD 1</option>
                    <option value="2">SD 2</option>
                    <option value="3">SD 3</option>
                    <option value="4">SD 4</option>
                    <option value="5">SD 5</option>
                    <option value="6">SD 6</option>
                </select>
                <select class="form-control form-control-sm border-light shadow-sm sub_jenjang" style="height: 50px;" id="_smp" name="sub_jenjang" required style="display: none;" disabled>
                    <option value="" selected>Pilih tingkat SMP</option>
                    <option value="1">SMP 7</option>
                    <option value="2">SMP 8</option>
                    <option value="3">SMP 9</option>
                </select>
                <select class="form-control form-control-sm border-light shadow-sm sub_jenjang" style="height: 50px;" id="_sma" name="sub_jenjang" required style="display: none;" disabled>
                    <option value="" selected>Pilih tingkat SMA</option>
                    <option value="1">SMA 10</option>
                    <option value="2">SMA 11</option>
                    <option value="3">SMA 12</option>
                </select>
			</div>
			<div class="form-group mb-3">
				<label>Pilih Region</label>
				<select class="form-control form-control-sm border-light shadow-sm" style="height: 50px;" id="region" name="region" required style="display: none;">
					<option value="" selected>Region</option>
					<option>Nganjuk</option>
					<option>Blitar</option>
					<option>Malang</option>
				</select>
			</div>
			<!-- <div class="input-group mb-3">
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text shadow-sm" id="base_name">TK</span>
				    <span class="input-group-text shadow-sm" id="sub_name">Kelas</span>
				  </div>
				  <input type="text" class="form-control form-control-sm border-light shadow-sm" name="class_name" placeholder="Nama Kelas" required style="height: 50px;">
				</div>
			</div> -->
			<div class="input-group mb-3">
				<button class="btn btn-info mr-2" type="submit" id="button-sbm">Submit</button>
				<button class="btn btn-warning" id="reset" type="reset">Reset</button>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript">
	$('#addKursus').click(function(){
		$('#addKursusModal').css('display','block');
	});

	$('.aktif').click(function(){
		var id_kelas = $(this).data('id');
		$.ajax({
	        type : 'get',
	        url : '{{URL::to('c_non_aktif')}}',
	        data: {id_kelas:id_kelas},
	        success:function(data)
	        {
	        	$('#aktif'+id_kelas).css('display','none');
				$('#non_aktif'+id_kelas).css('display','inline');
	        }
	    });
		
	});
	$('.non_aktif').click(function(){
		var id_kelas = $(this).data('id');
		$.ajax({
	        type : 'get',
	        url : '{{URL::to('c_aktif')}}',
	        data: {id_kelas:id_kelas},
	        success:function(data)
	        {
	        	$('#aktif'+id_kelas).css('display','inline');
				$('#non_aktif'+id_kelas).css('display','none');
	        }
	    });
	});
</script>

<script type="text/javascript">
	$('#jenjang').on('change',function(){
		var id_jenjang = $(this).val();
		$('#sub_jenjang_div').show();
		if (id_jenjang==1) {
			$('#base_name').html('TK_');
			$('#_tk').css('display','block').prop('disabled',false);
			$('#_sd').css('display','none').prop('disabled',true);
			$('#_smp').css('display','none').prop('disabled',true);
			$('#_sma').css('display','none').prop('disabled',true);
		}
		if (id_jenjang==2) {
			$('#base_name').html('SD_');
			$('#_tk').css('display','none').prop('disabled',true);
			$('#_sd').css('display','block').prop('disabled',false);
			$('#_smp').css('display','none').prop('disabled',true);
			$('#_sma').css('display','none').prop('disabled',true);
		}
		if (id_jenjang==3) {
			$('#base_name').html('SMP_');
			$('#_tk').css('display','none').prop('disabled',true);
			$('#_sd').css('display','none').prop('disabled',true);
			$('#_smp').css('display','block').prop('disabled',false);
			$('#_sma').css('display','none').prop('disabled',true);
		}
		if (id_jenjang==4) {
			$('#base_name').html('SMA_');
			$('#_tk').css('display','none').prop('disabled',true);
			$('#_sd').css('display','none').prop('disabled',true);
			$('#_smp').css('display','none').prop('disabled',true);
			$('#_sma').css('display','block').prop('disabled',false);
		}
	});

	$('.sub_jenjang').on('change',function(){
		var sj_id = $(this).val();
		$('#sub_name').html(sj_id);
	});
</script>



<script type="text/javascript">
	$(document).ready(function() {
	  $(window).keydown(function(event){
	    if(event.keyCode == 13) {
	      event.preventDefault();
	      return false;
	    }
	  });
	});
</script>

<script type="text/javascript">
	$('.ion-android-close').click(function(){
		$('.modal').css('display','none');
		$('#add_kelas_form')[0].reset();
	});

	$('#reset').click(function(){
		$('#sub_jenjang_div').css('display','none');
		$('#_tk').css('display','none').prop('disabled',true);
		$('#_sd').css('display','none').prop('disabled',true);
		$('#_smp').css('display','none').prop('disabled',true);
		$('#_sma').css('display','none').prop('disabled',true);
	});
</script>

<script type="text/javascript">
	$('#add_kelas').click(function(){
		$('#modal_add_kelas').css('display','block');
	});
</script>

<script type="text/javascript">
	$('#add_admin_form').submit(function(){
		
	});
</script>

<script type="text/javascript">
	$('#add_admin').click(function(){
		$('#modal_add_admin').css('display','block');
	});
	// $('.modal').click(function(){
	// 	$('.modal').css('display','none');
	// });
	$('#close').click(function(){
		$('.modal').css('display','none');
	});
</script>
<!-- <script type="text/javascript">
	
</script> -->

<script type="text/javascript">
	$(document).ready( function () {
	    $('#myTable').DataTable();
	} );
</script>

<script type="text/javascript">
	$(document).ready( function () {
	    $('#myTable2').DataTable();
	} );
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