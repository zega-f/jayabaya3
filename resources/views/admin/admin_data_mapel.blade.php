@extends('admin.adminlayout.main')
@section('content')
@if(count($all_mapel)==0)
	<div class="alert alert-info mt-3">
		<p>Belum terdapat data mapel</p>
	</div>
@else
	<div class="container-fluid shadow rounded" style="padding: 20px; background-color: white;">
		<h5><strong>Semua Mapel</strong></h5>
		<hr>
		<button id="add_mapel" class="btn btn-primary btn-sm mb-3 shadow">Tambah Mapel</button>
		@if ($message = Session::get('success'))
        <div class="alert alert-success alert-sm" id="alert">
            <p>{{ $message }}</p>
        </div>
        @endif
        @if ($message = Session::get('fail'))
        <div class="alert alert-warning alert-sm" id="alert">
            <p>{{ $message }}</p>
        </div>
        @endif
		<table class="table" id="myTable" style="font-size: 14px;">
			<thead class="thead-dark">
				<tr>
					<th>Nama</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				@foreach($all_mapel as $mapel)
				<tr>
					<td>{{$mapel->nama}}</td>
					<td>
						@if($mapel->aktif==1)
							<button class="btn btn-success btn-sm aktif" data-id="{{$mapel->id}}" id="aktif{{$mapel->id}}">Aktif</button>
							<button class="btn btn-warning btn-sm non-aktif" data-id="{{$mapel->id}}" id="aktif{{$mapel->id}}" style="display: none;">Non-aktif</button>
						@else
							<button class="btn btn-warning btn-sm non-aktif" data-id="{{$mapel->id}}" id="aktif{{$mapel->id}}">Non-aktif</button>
							<button class="btn btn-success btn-sm aktif" data-id="{{$mapel->id}}" id="aktif{{$mapel->id}}" style="display: none;">Aktif</button>
						@endif
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
@endif
<div id="form_add_mapel" class="modal">
	<div class="container shadow" style="max-width: 500px; border-radius: 5px; background-color: white; padding: 20px;">
		Tambah Mapel<span style="float: right;" id="close" class="pointer ion-android-close"></span>
		<hr>
		<form action="{{url('store_mapel')}}" method="post">
			@csrf
			<div class="input-group mb-3">
				<input type="text" name="mapel_name" class="form-control form-control-sm border-light shadow-sm" style="height: 50px" placeholder="Nama Mapel">
			</div>
			<button type="submit" class="btn btn-info btn-sm btn-block">Simpan</button>
		</form>
	</div>
</div>

<script type="text/javascript">
	$('#add_mapel').click(function(){
		$('#form_add_mapel').css('display','block');
	});

	$('#close').click(function(){
		$('#form_add_mapel').css('display','none');
	});
</script>

<script type="text/javascript">
	$(document).ready( function () {
	    $('#myTable').DataTable();
	} );
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