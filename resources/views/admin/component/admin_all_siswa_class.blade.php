@if(count($data_pes_bimbel)==0)
	<div class="alert alert-danger">
		<p>Tidak terdapat Siswa</p>
	</div>
@else
<table class="table pengajar" id="myTable">
	<thead class="thead-dark">
		<tr>
		<th>Foto</th>
		<th>Nama</th>
		<th>Alamat</th>
		<th>Tingkat</th>
		<th>Sekolah</th>
		<th>Action</th>
	</tr>
	</thead>
	@foreach($data_pes_bimbel as $bimbel)
		<form>
			<tr>
			<td><img src="{{url('img/user_profile/'.$bimbel->UserAvatar)}}" style="max-width: 50px;"></td>
			<td>{{$bimbel->UserName}}</td>
			<td>{{$bimbel->alamat}}</td>
			<td>
				@if($bimbel->jenjang==1)
				TK
				@elseif($bimbel->jenjang==2)
				SD
				@elseif($bimbel->jenjang==3)
				SMP
				@else
				SMA
				@endif
				Kelas {{$bimbel->grade}}</td>
			<td>{{$bimbel->school}}</td>
			<td>
			<a class="btn btn-outline-primary btn-sm edit" style="font-size: 15px;" data-id="{{$bimbel->id}}"><span class="ion-edit"></span></button>				
			</td>
		</tr>
		</form>	
	@endforeach
</table>
{{ $data_pes_bimbel->links() }}
@endif