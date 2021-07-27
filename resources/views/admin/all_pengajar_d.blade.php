@if(count($data_pengajar)==0)
<div class="alert alert-danger">
	Belum terdapat data pengajar.
</div>
@else
<table class="table pengajar" id="myTable_distinct">
		<thead class="thead-dark">
			<tr>
			<th>ID</th>
			<th>Nama</th>
			<th>Email</th>
			<th>Jenis Kelamin</th>
			<!-- <th>Tempat Lahir</th>
			<th>Tanggal Lahir</th> -->
			<th>Alamat</th>
			<th>Pendidikan</th>
			<th>Universitas</th>
			<th>No. Telpon</th>
			<th>Status</th>
		</tr>
		</thead>
		<tbody>
			@foreach($data_pengajar_s as $pengajar)
			<form>
				<tr>
				<!-- <input type="text" name="teacher_id" hidden="" id="teacher_id" name="{{$pengajar->id}}" value="{{$pengajar->id}}" hidden> -->
				<td>{{$pengajar->id}} </td>
				<td>{{$pengajar->UserName}}</td>
				<td>{{$pengajar->UserEmail}}</td>
				<td>
					@if($pengajar->jenis_kelamin==1)
					Laki - laki
					@else
					Perempuan
					@endif
				</td>
				<!-- <td>{{$pengajar->tempat_lahir}}</td>
				<td>{{$pengajar->tgl_lahir}}</td> -->
				<td>{{$pengajar->alamat}}</td>
				<td>{{$pengajar->pendidikan}}</td>
				<td>{{$pengajar->universitas}}</td>
				<td>{{$pengajar->telp}}</td>
				<td>
				<a class="btn btn-outline-primary btn-sm edit" style="font-size: 15px;" data-id="{{$pengajar->id}}"><span class="ion-edit"></span></button>				
				</td>
			</tr>
			</form>	
		@endforeach
		</tbody>
	</table>
	@endif

	

	

<script type="text/javascript">
    $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
</script>