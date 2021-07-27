@extends('admin.adminlayout.main')
@section('content')
<div class="container-fluid shadow rounded" style="background-color: white; padding: 20px;">
	Semua Peserta : <h5>{{$program}}</h5>
	<hr>
	<div id="all_siswa">
		@include('admin.component.admin_all_siswa_class')
	</div>
</div>

	<script type="text/javascript">
		$('#keyword').on('keyup',function(){
			var keyword = $('#keyword').val();
			var program = '{{$program}}';
			$.ajax({
	        type : 'get',
	        url : '{{URL::to('cari_siswa')}}',
	        data: {keyword:keyword,program:program},
	        success:function(data)
	        {
	          $('#all_siswa').html(data);
	        }
	      });
		});
	</script>
	<script type="text/javascript">
	$(document).ready( function () {
		    $('#myTable').DataTable();
		} );
	</script>
@endsection