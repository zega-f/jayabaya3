<div class="container rounded" style="background-color: white; padding: 20px; height: 600px; overflow: auto;">
	{{$thisMateri->materi_name}} 
	@if($thisMateri->materi_status==1)
		<button class="btn btn-info btn-sm">Aktif</button>
	@else
		<button class="btn btn-warning btn-sm">Suspended</button>
	@endif
	<span style="float: right; cursor: pointer;" class="ion-android-close" id="close"></span>
	<hr>
	<!-- <hr> -->
	<div class="row">
		<div class="col-xl-6">
			<h5>Video</h5>
			<hr>
			<div class="embed-responsive embed-responsive-16by9 mb-3">
				<iframe class="embed-responsive-item" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen src="{{$thisMateri->materi_video}}"></iframe>
			</div>
			<h5>Lampiran</h5>
			<hr>
			<a href="{{url('materi/'.$thisMateri->materi_file)}}">{{$thisMateri->materi_file}}</a>
		</div>
		<div class="col-xl-6">
			<h5>Materi Konten</h5>
			<hr>
		<div class="container" style="height: 450px; overflow: auto;">
			<?php  
				$str = $thisMateri->materi_konten;
				echo $str;
			?>
		</div>
		</div>
	</div>
	
</div>
<script type="text/javascript">
	$('#close').click(function(){
		$('#showMateri').css('display','none');  
	})
</script>