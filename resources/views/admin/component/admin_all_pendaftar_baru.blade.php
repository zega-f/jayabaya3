<h5>Peserta Baru</h5>
	<hr>
	@if(count($data_new_member)==0)
		<div class="alert alert-info">
			<p>Belum terdapat pendaftar baru</p>
		</div>
	@else
	<table class="table pengajar" id="myTable">
		<thead class="thead-dark">
			<tr>
			<th>ID</th>
			<th>Username</th>
			<th>Alamat</th>
			<th>Course</th>
			<th>Jenjang</th>
			<th>Kelas</th>
			<th>Asal Sekolah</th>	
			<th>Action</th>
		</tr>
		</thead>
		<tbody>
			@foreach($data_new_member as $nm)
			<tr>
				<td>{{$nm->id}}</td>
				<td>{{$nm->name}}</td>
				<td>{{$nm->address}}</td>
				<td>
					@if($nm->course=='math')
					Kursus Matematika
					@elseif($nm->course=='english')
					Kursus Bahasa Inggris
					@elseif($nm->course=='arab')
					Kursus Bahasa Arab
					@else
					Program Kelas Bimbel
					@endif

				</td>
				<td>
					@if($nm->jenjang==1)
						TK
					@elseif($nm->jenjang==2)
						SD
					@elseif($nm->jenjang==3)
						SMP
					@else
						SMA
					@endif
				</td>
				<td>{{$nm->grade}}</td>
				<td>{{$nm->school}}</td>
				<td><a class="btn btn-success btn-sm edit" data-id="{{$nm->id}}" style="color: white;">Periksa</a></td>
			</tr>
			@endforeach
		</tbody>

	</table>
	@endif
	<script type="text/javascript">
		$('.edit').click(function(){
	      $('#form-pendaftar').css("display","block");
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