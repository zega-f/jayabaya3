@extends('admin.adminlayout.main')
@section('content')
      <script>
        var pusher = new Pusher('18367ead33873f6ed509', {
          cluster: 'ap1'
        });

        var channel = pusher.subscribe('online-course');
        channel.bind('App\\Events\\RegisterEvent', function(data) {
          $.ajax({
              type : 'get',
              url : '{{URL::to('unverified-user2')}}',
              success:function(user)
              {
                $('#new-pendaftar').html(user);
              }
            });
        });
      </script>
<div class="container-fluid shadow rounded mb-3" id="new-pendaftar" style="background-color: white; padding: 20px;">
	@include('admin.component.admin_all_pendaftar_baru')
</div>
<div id="form-pendaftar" class="modal">

</div>

<script type="text/javascript">
	$(document).ready( function () {
	    $('#myTable').DataTable();
	} );
</script>
@endsection




