<div class="card-body" style="overflow: auto;">
	<table id="myTable2" class="table">
	<thead>
		<tr>
			<th>Nama</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody id="tbody_inactive">
		@foreach($all_siswa as $siswa)
			<tr id="row{{$siswa->user}}">
				<td>{{$siswa->UserName}}</td>
				<td><button class="btn btn-info btn-sm add_2_class" id="add_2_class{{$siswa->user}}" data-uname2="{{$siswa->UserName}}" data-idsiswa2="{{$siswa->user}}">Add</button></td>
			</tr>
		@endforeach
	</tbody>
</table>
</div>

<script type="text/javascript">
	$(document).ready( function () {
	    $('#myTable2').DataTable();
	} );
</script>

<script type="text/javascript">
	$('.add_2_class').click(function(){
		var siswa_id = $(this).data('idsiswa2');
		var id_kelas = '{{$id_kelas}}';
		$('.add_2_class').prop('disabled',true);
		$.ajax({
        type : 'post',
        url :  '{{URL::to('siswa_into_class')}}',
        data: {_token: "{{ csrf_token() }}",siswa_id:siswa_id,id_kelas:id_kelas},
        success:function(data)
        {
        	$('#row'+siswa_id).css('display','none');
        	var id_kelas = '{{$id_kelas}}';

          	$('.add_2_class').prop('disabled',false);

			$.ajax({
		        type : 'get',
		        url : '{{URL::to('siswa_aktif')}}',
		        data: {id_kelas:id_kelas},
		        success:function(data)
		        {
		          $('#siswa_aktif').html(data);
		        }
		      });

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