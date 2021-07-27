
<div class="card-body" style="overflow: auto;">
	<table id="myTable" class="table">
	<thead>
		<tr>
			<th>Nama</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody id="tbody_active">
		@foreach($all_siswa_active as $siswa_a)
			<tr id="row{{$siswa_a->user}}">
				<td>{{$siswa_a->UserName}}</td>
				<td>
					<button class="btn btn-info btn-sm remove_siswa" id="remove_siswa{{$siswa_a->user}}" data-uname="{{$siswa_a->UserName}}" data-id="{{$siswa_a->user}}">Remove</button>
				</td>
			</tr>
		@endforeach
	</tbody>
</table>
</div>

<script type="text/javascript">
	$(document).ready( function () {
	    $('#myTable').DataTable();
	} );
</script>

<script type="text/javascript">
	$('.remove_siswa').click(function(){
		var id_siswa_r = $(this).data('id');
		$.ajax({
	        type : 'post',
	        url : '{{URL::to('remove_siswa')}}',
	        data: {_token: "{{ csrf_token() }}",id_siswa_r:id_siswa_r},
	        success:function(data)
	        {
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

	        	$('#row'+id_siswa_r).css('display','none');
	        	$.ajax({
		        type : 'get',
		        url : '{{URL::to('siswa_inaktif')}}',
		        data: {id_kelas:id_kelas},
		        success:function(data)
		        {
		          $('#siswa_inaktif').html(data);
		        }
		      });
	        }
	    });
	})
</script>