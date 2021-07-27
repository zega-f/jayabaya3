<div class="sidenav">
<h5 class="text-light">Jayabaya Bimbel <span class="ion-chevron-left" id="minimize_sidebar" style="float: right; cursor: pointer;"></span></h5>
<hr class="bg-light">
<a href="{{url('admin-dashboard')}}">Dashboard</a>
@if(Session::get('level')==1)
<a href="{{url('kelola_admin')}}">Manage Admin</a>
@endif
<!-- <button class="dropdown-btn"><span class="ion-cube"></span> Data Master<i class="fa fa-caret-down"></i></button>
<div class="dropdown-container">
<a href="#">Atur Tahun</a>
<a href="#">Atur Kelas</a>
<a href="#">Atur Jadwal</a>
</div> -->

<button class="dropdown-btn"><span class="ion-cube"></span> Data Pengguna<i class="fa fa-caret-down"></i></button>
<div class="dropdown-container">
      <a href="{{url('all_teacher')}}"><span class="ion-ios-people"></span> Data Pengajar</a>
      <a href="{{url('admin_all_siswa')}}"><span class="ion-ios-people"> Semua Siswa</span></a>
</div>



<button class="dropdown-btn"><span class="ion-ios-people"></span> Peserta Kursus 
<i class="fa fa-caret-down"></i>
</button>
<div class="dropdown-container">
<a href="{{url('peserta-bimbel/class')}}">Peserta Bimbel</a>
<a href="{{url('peserta-english/english')}}">Peserta Bhs. Inggris</a>
<a href="{{url('peserta-math/math')}}">Peserta Matematika</a>
</div>

<button class="dropdown-btn"><span class="ion-university"></span> Pelajaran
<i class="fa fa-caret-down"></i>
</button>
<div class="dropdown-container">
<a href="{{url('mapel')}}">Mata Pelajaran</a>
<a href="{{url('admin_materi/english')}}">Materi Bahasa Inggris</a>
<a href="{{url('admin_materi/math')}}">Materi Matematika</a>
<a href="{{url('admin_materi/class')}}">Materi Kelas</a>
</div>

<a href="{{url('jadwal_pelajaran')}}"><span class="ion-clipboard"></span> Jadwal Pelajaran</a>
<a href="{{url('pendaftar-baru')}}"><span class="ion-ios-personadd"></span> Pendaftar Kursus</a>
<a href="{{url('kelas')}}"><span class="ion-ios-personadd"></span> Atur Kelas</a>
<hr class="bg-light">
<a href="https://astartekno.com/" style="background-color: white; color: black; bottom: 20px;" class="rounded" target="_blank">astartekno.com <span class="ion-android-globe" style="float: right;"></span></a>
</div>

<p class="mb-3" style="position: absolute; bottom: 20px; text-align: center;"></p>

<script type="text/javascript">
      // $( window ).resize(function(){
      //       $('#minimize_sidebar').click(function(){
      //             var screen = $( window ).width();
      //             if (screen >= 300) {
      //                   $('.sidebar').css('margin-left','-250px');
      //                   $('.main').css('margin-left','0');
      //                   $('#header2nd').fadeIn();
      //             }else{
      //                   $('.sidebar').css('display','block');
      //                   $('.main').css('margin-left','0');
      //                   $('#header2nd').fadeIn();
      //             }
      //       });
      // });
      $('#minimize_sidebar').click(function(){
            $('.sidebar').css('display','none');
            $('.main').css('margin-left','0');
            $('#header2nd').fadeIn();
      });
</script>