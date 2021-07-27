@extends('admin.adminlayout.main')
@section('content')
	<div class="container mb-3 rounded shadow" style="padding: 20px; background-color: white;">
		<div class=" shadow-sm" style="width: 500px; padding: 20px;">
			<h5>{{$courseID}}</h5>
			<hr>
			<form action="{{url('updateMeet/'.$courseID)}}" method="post" enctype="multipart/form-data">
				@csrf
				<div class="form-group">
					<label>Meeting URL</label>
					<input type="text" name="meetID" class="form-control" value="{{$thisCourse->courseMeetID}}" placeholder="E.g. https://meet.google.com/">
				</div>
				<button type="submit" class="btn btn-info btn-sm">Save</button>
			</form>
		</div>
		<hr>
		<table class="table" style="font-size: 14px;"  id="myTable">
			<thead class="thead-dark">
				<tr>
					<th>ID</th>
					<th>Nama</th>

				</tr>
			</thead>
			<tbody>
				@foreach($thisCourseSiswa as $siswa)
				<tr>
					<td>{{$siswa->id_user}}</td>
					<td>{{$siswa->userName}}</td>
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