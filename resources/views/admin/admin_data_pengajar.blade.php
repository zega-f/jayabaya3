@extends('admin.adminlayout.main')
@section('content')
	<div class="container-fluid shadow rounded" style="padding: 20px; max-width: 100vw; overflow: auto; background-color: white;">
		<h5>Data Pengajar</h5>
		<hr>
		@if(Session::get('level')==1)
		<a href="#" class="btn btn-primary btn-sm shadow" style="margin-top: 10px; margin-bottom: 10px;" id="myBtn">Tambah Pengajar</a>
		@endif
		<!-- <button class="btn btn-success btn-sm" id="see_all">See All</button>
		<button class="btn btn-outline-primary btn-sm" id="see_less">See Less</button> -->
		<div id="all_pengajar" class="mb-3" style="background-color: white; padding: 20px;">
			@include('admin.all_pengajar')
		</div>
		<div id="all_pengajar_d" class="mb-3" style="display: none;">
			
		</div>
	</div>
	<div id="myModal" class="modal">
		<!-- <div class="container center" style="width: auto; opacity: 100%;  padding: 20px;  box-shadow: 1px 1px 5px grey;"> -->
			<div class="row">
				<div class="col-xl-6 center">
				<div class="container" style=" padding: 20px; background-color: white; cursor: pointer;">
					<span style="float: right;" class="ion-android-close tutup"></span>
					<!-- <button class="btn btn-warning btn-sm tutup" style="float: right;"></button> -->
					<b>Tambah Pengajar</b>
					<hr>
				  	@include('admin.add_form')
				</div>
			</div>
			</div>
		<!-- </div> -->
	</div>
	<div id="form-teacher" class="modal" style="background-color: white;">
		
	</div>



	<script type="text/javascript">
		$(document).ready(function(){
			// $('#see_all').removeClass('btn')
		});
		$('#see_less').click(function(){
			$('#see_less').removeClass('btn-outline-primary').addClass('btn-primary');
			$('#see_all').removeClass('btn-success').addClass('btn-outline-success');
			$('#all_pengajar').css('display','none');
			$('#all_pengajar_d').css('display','block');
		});
		$('#see_all').click(function(){
			$('#see_less').removeClass('btn-primary').addClass('btn-outline-primary');
			$('#see_all').removeClass('btn-outline-success').addClass('btn-success');
			$('#all_pengajar').css('display','block');
			$('#all_pengajar_d').css('display','none');
		});

	</script>

<script type="text/javascript">
		$('.edit').click(function(){
	      $('#form-teacher').css("display","block");
	    });
	</script>
	<script type="text/javascript">
    $('.edit').click(function(){
      var teacher_id = $(this).data('id');;
      $.ajax({
        type : 'get',
        url : '{{URL::to('edit_teacher')}}',
        data: {teacher_id:teacher_id},
        success:function(data)
        {
          $('#form-teacher').html(data);
        }
      });
    })
</script>
	
	<script type="text/javascript">
		$('#keyword').on('keyup',function(){
			var keyword = $('#keyword').val();
			$.ajax({
	        type : 'get',
	        url : '{{URL::to('cari_pengajar')}}',
	        data: {keyword:keyword},
	        success:function(data)
	        {
	          $('#all_pengajar').html(data);
	        }
	      });
		});
	</script>

	<script type="text/javascript">
		$(document).ready( function () {
		    $('#myTable').DataTable();
		} );
		$(document).ready( function () {
		    $('#myTable_distinct').DataTable();
		} );
	</script>


<script type="text/javascript">
    $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
</script>
@endsection