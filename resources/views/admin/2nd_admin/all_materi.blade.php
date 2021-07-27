@extends('admin.adminlayout.main')
@section('content')
<div class="container-fluid shadow rounded" style="padding: 20px; background-color: white;">
	<h5>Materi {{$classType}}</h5>
	<hr>
	<table class="table" id="myTable" style="font-size: 14px;">
		<thead class="thead-dark">
			<tr>
				<th>ID</th>
				<th>Nama Materi</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			@foreach($materi as $m)
				<tr id="row{{$m->id}}">
					<td>{{$m->id}}</td>
					<td>{{$m->materi_name}}</td>
					<td style="position: relative;">
						<i class="ion-android-apps more" data-id="{{$m->id}}" style="cursor: pointer;"></i>
						<div class="container shadow morebox" id="morebox{{$m->id}}" style="position: absolute; left: 0; z-index: 99; display: none; width: 120px; background-color: white; padding: 20px;">
							<button class="btn btn-success btn-sm btn-block lihat" data-id="{{$m->id}}">Lihat</button>
							<button class="btn btn-warning btn-sm btn-block suspend" data-id="{{$m->id}}">suspend</button>
						</div>
					</td>
				</tr>
			@endforeach
		</tbody>
	</table>
</div>
<div class="modal" id="showMateri">
	
</div>
<script type="text/javascript">
	$('.lihat').click(function(){
		var id = $(this).data('id');
		$.ajax({
	        type : 'get',
	        url : '{{URL::to('admin_show_materi')}}',
	        data: {id:id},
	        success:function(data)
	        {
	          $('#showMateri').css('display','block').html(data);
	        }
	    });
	})

	

	$('.suspend').click(function(){
		var id = $(this).data('id');
		if (confirm('Apakah anda yakin ingin melakukan suspend terhadap materi ini?')) {
			$('#row'+id).addClass('bg-warning');
        } else {
            
        }
	})
	$('.more').click(function(){
		var more_id = $(this).data('id');
        $('#morebox'+more_id).slideToggle();
        $('.morebox').not('#morebox'+more_id).slideUp('fast');
	});
	$('body').click(function(e){
        if (!$(e.target).is('.more')) {
            $('.morebox').slideUp();
        }
    })
	$(document).ready( function () {
	    $('#myTable').DataTable();
	} );
</script>
@endsection
