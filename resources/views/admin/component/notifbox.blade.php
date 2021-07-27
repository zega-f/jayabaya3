@foreach($notification as $n)
	<div class="container" style="padding: 5px;">
		{{$n->url}}
	</div>
	<hr>
@endforeach