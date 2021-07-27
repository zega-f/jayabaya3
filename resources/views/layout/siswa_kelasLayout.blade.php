<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- <script defer src="{{ asset('public/js/theme.js') }}"></script> -->
  <title>Siswa - Jayabaya Bimbel</title>
  <link href="{{ asset('public/css/style.css') }}" rel="stylesheet">
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700&display=swap"
    rel="stylesheet">
  <!-- icon -->
  <link rel="stylesheet" type="text/css" href="{{ asset('public/ionicons/css/ionicons.min.css') }}">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
  <script src="https://js.pusher.com/7.0/pusher.min.js"></script>
  <script>

    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('18367ead33873f6ed509', {
      cluster: 'ap1'
    });

    var channel = pusher.subscribe('online-course');
    channel.bind('App\\Events\\ClassStream', function(data) {
      // alert(JSON.stringify(data));
      var classID = '{$classID}';
      if (data.response == 'success') {
        $.ajax({
            type: 'get',
            url: '{{URL::to('retStream')}}',
            data: {classID:classID},
            success: function (data) {
              $('#streamBox').html(data);
            }
        });
      }else{
        console.log('failed');
      }
    });
  </script>
</head>

<body class="bg-light">
  <div class="sidenav">
      @include('user.siswa.Kelas.kelasSidebar')
  </div>
  <div class="main" style="min-height: 100vh;">
    @include('user.siswa.Kelas.kelas_navbar')
    @yield('content')
  </div>
  <div class="modal_attch" id="show_attch_modal">
    
  </div>

  @include('user.siswa.Kelas.class_stream')

  <script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript">
    $('#close_chat').click(function(){
      $('#pop-up-email').hide();
    })
        $('.hide-sidebar').click(function(){
            $('.hide-sidebar').hide();
            $('#show-sidebar').show();
            $('.sidebar').addClass('sidenav-hide').removeClass('sidenav-show');
            $('.main').addClass('main-full').removeClass('main-half');
        })
        $('#show-sidebar').click(function(){
            $('#show-sidebar').hide()
            $('.hide-sidebar').show();
            $('.sidebar').addClass('sidenav-show').removeClass('sidenav-hide');
            $('.main').removeClass('main-full').addClass('main-half');
        })

        var dropdown = $('.dropdown-btn');
        var i;

        $('.dropdown-btn').click(function(){
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "block") {
                dropdownContent.style.display = "none";
            } else {
                dropdownContent.style.display = "block";
            }
        })
        
    </script>
  <script type="text/javascript">
    $('#konten').on('keyup',function(){
      var konten = $(this).val();
      if (konten==''||konten==' ') {
        $('#sendStream').prop('disabled',true);
      }else{
        $('#sendStream').prop('disabled',false);
      }
    })

    $('#sendStream').click(function(){
      var konten = $('#konten').val();
      var classID = '{$classID}';
      $.ajax({
        type : 'post',
        url : '{{URL::to('sendStream')}}',
        data: {"_token": "{{ csrf_token() }}",konten:konten,classID:classID},
        success:function(data)
        {
          $('#stream')[0].reset();
          $('#sendStream').prop('disabled',true);
          $("#streamBox").delay(2000).animate({ scrollTop: $(document).height() }, 1000);
        }
      });
    })
  </script>

  <script type="text/javascript">
    $(document).ready(function(){
      var classID = '{$classID}';
        $.ajax({
            type: 'get',
            url: '{{URL::to('retStream')}}',
            data: {classID:classID},
            success: function (data) {
              $('#streamBox').html(data);
            },
        });
    })
  </script>

  <!--Start of Tawk.to Script-->
    <script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
      (function(){
      var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
      s1.async=true;
      s1.src='https://embed.tawk.to/5f0c53d55b59f94722baa002/default';
      s1.charset='UTF-8';
      s1.setAttribute('crossorigin','*');
      s0.parentNode.insertBefore(s1,s0);
      })();
    </script>
    <!--End of Tawk.to Script-->

  <script type="text/javascript">
    $('#add_materi_btn').click(function(){
      $('.card').css('background-color','red');
    })
  </script>

  <script type="text/javascript">
    $('.dropdown').click(function(){
      $('.dropdown-content').toggle();
    });
  </script>

  
  <script src="{{asset('public/js/bootstrap.min.js')}}"></script>
</body>
</html>