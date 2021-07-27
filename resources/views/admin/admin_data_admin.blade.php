@extends('admin.adminlayout.main')
@section('content')
@if(count($all_admin)<=0)
	<div class="alert alert-info mt-3">
		<p>Belum terdapat data admin</p>
	</div>
@else
	<div class="container-fluid shadow rounded" style="background-color: white; padding: 20px;">
		<h5><strong>Semua Admin</strong></h5>
		<hr>
		<button id="add_admin" class="btn btn-primary btn-sm mb-3 shadow">Tambah Admin</button>
		<table class="table" id="myTable" style="font-size: 14px;">
			<thead class="thead-dark">
				<tr>
					<th>Email</th>
					<th>Name</th>
					<th>Level</th>
					<th>Telp.</th>
					<th>Kelola</th>
				</tr>
			</thead>
			<tbody>
				@foreach($all_admin as $admin)
				<tr>
					<td>{{$admin->AdminEmail}}</td>
					<td>{{$admin->AdminName}}</td>
					<td>Level {{$admin->AdminLevel}}</td>
					<td>{{$admin->AdminContactNo}}</td>
					<td>
						@if($admin->AdminStatus==0)
						<button class="btn btn-warning btn-sm aktif" id="aktif{{$admin->id}}" data-id="{{$admin->id}}">Non-aktif</button>
						<button class="btn btn-success btn-sm non_aktif" id="non_aktif{{$admin->id}}" data-id="{{$admin->id}}" style="display: none;">Aktif</button>
						@else
						<button class="btn btn-success btn-sm non_aktif" id="non_aktif{{$admin->id}}" data-id="{{$admin->id}}">Aktif</button>
						<button class="btn btn-warning btn-sm aktif" id="aktif{{$admin->id}}" data-id="{{$admin->id}}" style="display: none;">Non-aktif</button>
						@endif
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
@endif

<div id="modal_add_admin" class="modal">
	<div class="container mt-3 mb-3 shadow border" style="background-color: white; max-width: 500px; padding: 30px;">
		Tambah Admin<span style="float: right;" class="pointer ion-android-close" id="close"></span>
		<hr>
		<form action="{{url('add_admin')}}" method="post" id="add_admin_form" enctype="multipart/form-data"> 
			@csrf
			<div class="input-group mb-3">
				<input type="input" name="admin_name" id="admin_name" class="form-control form-control-sm border-light shadow-sm" style="height: 50px;" required placeholder="Nama admin">
			</div>
			<div class="input-group mb-3">
				<input type="email" name="admin_email" id="admin_email" class="form-control form-control-sm border-light shadow-sm" style="height: 50px;" required placeholder="e-mail">
			</div>
			<div id="alert-email-success" class="alert alert-success" style="display: none;">
				<!-- Email dapat dipakai -->
			</div>
			<div id="alert-email-fail" class="alert alert-danger" style="display: none;">
				Email tidak dapat dipakai
			</div>
			<div class="input-group mb-3">
				<div class="input-group-append">
					<span class="input-group-text input-group-text-sm border-light shadow-sm" id="basic-addon1">+62</span>
	            </div>
				<input type="number" name="admin_phone" min="1" class="form-control form-control-sm border-light shadow-sm" style="height: 50px;" required placeholder="">
			</div>
			<div class="input-group mb-3">
				<select class="form-control form-control-sm border-light shadow-sm" id="admin_level" name="admin_level" style="height: 50px;" required>
					<option value="" selected>Admin Level</option>
					<option value="1">Level 1</option>
					<option value="2">Level 2</option>
				</select>
			</div>
			<div class="input-group mb-3">
				<button class="btn btn-info mr-2" type="submit" style="display: none;" disabled id="button-sbm">Submit</button>
				<button class="btn btn-warning" id="reset" type="reset">Reset</button>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript">
	$('#admin_email').on('blur',function(){
		var email = $(this).val();
		if (email=='') {
			$('#alert-email-fail').css('display','block').html('email tidak boleh kosong');
		}else{
			$.ajax({
		        type : 'get',
		        url : '{{URL::to('admin_check_email')}}',
		        data: {a_email:email},
		        success:function(data)
		        {
		        	// return data;
		        	if(data == 1 ){
		        		// console.log('dapat');
		        		$('#alert-email-success').css('display','block').html('email dapat dipakai');
		        		$('#alert-email-fail').css('display','none');
		     			$('#button-sbm').prop('disabled',false);   		
		        	}else{
		        		$('#alert-email-fail').css('display','block').html('email tidak dapat dipakai');
		        		$('#alert-email-success').css('display','none');
		        		$('#button-sbm').css('display','none');
		        		// console.log('tidak');
		        	}
		        	
		        }
		    });
		}
	});

	$('#admin_level').on('change',function(){
		$('#button-sbm').css('display','block');
	})

	$('#reset').click(function(){
		$('#button-sbm').css('display','none');
		$('.alert').css('display','none');
	})
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
	$('.non_aktif').click(function(){
		var id = $(this).data('id');
		$.ajax({
	        type : 'get',
	        url : '{{URL::to('non_aktif')}}',
	        data: {admin_id:id},
	        success:function(data)
	        {
	        	$('#aktif'+id).css('display','block');
	        	$('#non_aktif'+id).css('display','none');
	        }
	    });
	});
	$('.aktif').click(function(){
		var id = $(this).data('id');
		$.ajax({
	        type : 'get',
	        url : '{{URL::to('aktif')}}',
	        data: {admin_id:id},
	        success:function(data)
	        {
	        	$('#aktif'+id).css('display','none');
				$('#non_aktif'+id).css('display','block');
	        }
	    });
	});
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