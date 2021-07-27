@if(count($data_pengajar)==0)
<div class="alert alert-danger">
	Belum terdapat data pengajar.
</div>
@else
<table class="table pengajar" id="myTable">
		<thead class="thead-dark">
			<tr>
			<th>ID</th>
			<th>Nama</th>
			<th>Email</th>
			<th>Jenis Kelamin</th>
			<th>Mata Pelajaran</th>
			<th>Alamat</th>
			<th>Pendidikan</th>
			<th>Universitas</th>
			<th>No. Telpon</th>
			<th>Action</th>
		</tr>
		</thead>
		<tbody>
			@foreach($data_pengajar as $pengajar)
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
				<td>
					<?php  
						$thisTeacherMapel = DB::table('tbl_classteacher')->where('id_teacher',$pengajar->id_user)->get();
						// $mapel = $thisTeacherMapel_2->id_kursus;
						foreach ($thisTeacherMapel as $thisTeacherMapel_2) {
							$mapel = $thisTeacherMapel_2->id_kursus;
							if ($mapel=='english'||$mapel=='math'||$mapel=='arab') {
								echo 'Kursus '.$mapel.', ';
							}else{
								$mapel_2 = DB::table('tblmapel')->where('id',$thisTeacherMapel_2->id_kursus)->value('nama');
								echo $mapel_2.', ';
							}
						}
					?>
				</td>
				<td>{{$pengajar->alamat}}</td>
				<td>{{$pengajar->pendidikan}}</td>
				<td>{{$pengajar->universitas}}</td>
				<td>{{$pengajar->telp}}</td>
				<td>
				<!-- <a class="btn btn-outline-primary btn-sm edit" style="font-size: 15px;" data-id="{{$pengajar->id}}"><span class="ion-edit"></span></button>	 -->
				#			
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