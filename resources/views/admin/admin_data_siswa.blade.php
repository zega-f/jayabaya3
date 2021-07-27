@extends('admin.adminlayout.main')
@section('content')
	<div class="container-fluid shadow rounded" style="padding: 20px; background-color: white; overflow: auto;">
		<h5>Semua Siswa</h5>
		<br>
		<div class="alert alert-success" style="display: none;">E-mail sukses dikirim.</div>
		<div class="alert alert-warning" style="display: none;">E-mail gagal dikirim.</div>
		<table class="table" id="myTable" style="font-size: 14px;">
			<thead class="thead-dark">
				<tr>
					<th>Username</th>
					<th>E-mail</th>
					<th>Tlp.</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				@foreach($all_siswa as $siswa)
					<tr>
						<td>{{$siswa->UserName}}</td>
						<td>{{$siswa->UserEmail}}</td>
						<td>{{$siswa->telp}}</td>
						<td><button class="btn btn-info btn-sm send_promote ion-email" id="send_button{{$siswa->id_user}}" data-id="{{$siswa->id_user}}"></button>
							<?php
								$coba = '085708366100'; 
								$phone = substr($coba, 1,99);
								$ina_phone_number = '+62'.$phone;
								// echo $ina_phone_number;
							?>
							<a href="https://wa.me/{{$ina_phone_number}}?text=Salam%20Bahagia%21%20%F0%9F%99%82%0A%0AKami%20mendapati%20Anda%20kesulitan%20dalam%20registrasi%20kursus%20di%20jayabayabimbel.co.id.%20Admin%20kami%20siap%20membantu%20Anda%20dalam%20proses%20registrasi.%20%0AAnda%20dapat%20mengirimkan%20WA%20di%20nomor%200857%205539%203713%20dengan%20senang%20hati%20kami%20membantu%20Anda." target="_blank" class="btn btn-success btn-sm ion-social-whatsapp-outline">
							</a>
						</td>
					</tr>
				@endforeach
			</tbody>
		</table>
	</div>
	<script type="text/javascript">
		$('.send_promote').click(function(){
			$(this).prop('disabled',true);
			var id_user = $(this).data('id');
			$.ajax({
		        type : 'post',
		        url : '{{URL::to('sendPromotion')}}',
		        data: {"_token": "{{ csrf_token() }}",id_user:id_user},
		        success:function(data)
		        {
		        	$('#send_button'+id_user).prop('disabled',false);
		        	if (data==1) {
		        		$('.alert-success').fadeIn().delay(2000).fadeOut();
		        	}else{
		        		$('.alert-warning').fadeIn().delay(2000).fadeOut();
		        	}
		        }
		    });
		});

		// $(document).ready(function(){
		// 	$('.alert').delay(2000).fadeOut();
		// });
	</script>
@endsection