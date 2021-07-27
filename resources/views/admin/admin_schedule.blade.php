@extends('admin.adminlayout.main')
@section('content')
<div class="cotainer-fluid shadow rounded" style="padding: 20px; background-color: white;">
	<h5>Jadwal Pelajaran</h5>
	<hr>
	<table id="myTable" class="table" style="font-size: 12px;">
		<thead class="thead-dark">
			<tr>
				<th>Hari</th>
				<th>Kelas</th>
				<th>Region</th>
				<th>Waktu</th>
				<th>Guru</th>
			</tr>
		</thead>
		<tbody>
			@foreach($AllJadwal as $jadwal)
				<tr>
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
					</td>
					<td>
						<?php 
							$className = DB::table('tblkelas')->where('id',$jadwal->kelas_id)->get();
						 ?>
						 @foreach($className as $class)
						 	@if($class->base_name==1)
						 	TK
						 	@elseif($class->base_name==2)
						 	SD
						 	@elseif($class->base_name==3)
						 	SMP
						 	@else
						 	SMA
						 	@endif 
						 	{{$class->sub_name}} {{$class->class_name}}
						 @endforeach
					</td>
					<td>
						{{$class->region}}
					</td>
					<td>
						{{$jadwal->waktu}} - {{$jadwal->waktuEnd}}
					</td>
					<td>
						<?php 
							$teacherName = DB::table('tbluser')->where('id_user',$jadwal->teacher_id)->value('UserName');
							echo $teacherName;
						 ?>
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
@endsection