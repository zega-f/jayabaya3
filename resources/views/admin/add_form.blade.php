<form style=" overflow: auto; height: 500px; padding: 0 10px 0 10px;" enctype="multipart/form-data" action="{{url('store_teacher')}}" method="post">
@csrf
<div class="input-group">
  <button class="btn btn-success btn-sm mr-2 mb-3 mt-2" type="button" id="new">New</button>
  <button class="btn btn-warning btn-sm mr-2 mb-3 mt-2" type="button" id="existed">Existed</button>
</div>
<div id="existed_teacher" style="display: none;">
  <label>Pilih data guru</label>
  <select class="form-control form-control-sm shadow-sm mb-3" id="s_teacher" name="s_teacher" style="height: 50px;" required disabled>
    <option value="" selected>Pilih guru</option>
    @foreach($data_pengajar_s as $t_ex)
      <option value="{{$t_ex->id_user}}">{{$t_ex->UserName}} {{$t_ex->id_user}}</option>
    @endforeach
  </select>
</div>
	<div id="new_teacher">
   <div class="form-group">
    <label for="teacher_name">Nama</label>
    <input type="nama" name="teacher_name" class="form-control form-control-sm shadow-sm" id="teacher_name" required  placeholder="Nama lengkap" style="height: 50px;">
  </div>
  <div class="form-group">
    <label for="teacher_email">Email address</label>
    <input type="email" name="teacher_email" class="form-control form-control-sm shadow-sm" id="teacher_email" required  placeholder="Enter email" style="height: 50px;">
    <div id="alert_email" class="mt-2">
      
    </div>
  </div>
  <div class="form-group">
    <label for="teacher_gender">Jenis Kelamin</label>
    <select class="form-control form-control-sm shadow-sm" required id="teacher_gender" name="teacher_gender" style="height: 50px;">
      <option value="">Jenis Kelamin</option>
      <option value="1">Laki - laki</option>
      <option value="2">Perempuan</option>
    </select>
  </div>
  <div class="form-group">
    <label for="teacher_tempatlahir">Tempat Lahir</label>
    <input type="text" name="teacher_tempatlahir" class="form-control form-control-sm shadow-sm" required id="teacher_tempatlahir"  placeholder="Tempat Lahir" style="height: 50px;">
  </div>
  <div class="form-group">
    <label for="teacher_tgllahir">Tanggal Lahir</label>
    <input type="date" name="teacher_tgllahir" class="form-control form-control-sm shadow-sm" required id="teacher_tgllahir" style="height: 50px;">
  </div>
  <div class="form-group">
    <label for="teacher_alamat">Alamat</label>
    <input type="text" name="teacher_alamat" class="form-control form-control-sm shadow-sm" required id="teacher_alamat"  placeholder="Alamat" style="height: 50px;">
  </div>
  <div class="form-group">
    <label for="teacher_pendidikan">Pendidikan</label>
    <select id="teacher_pendidikan" name="teacher_pendidikan" class="form-control form-control-sm shadow-sm" required style="height: 50px;">
      <option value="" selected>Pendidikan</option>
      <option>Strata 1</option>
      <option>Strata 2</option>
      <option>Strata 3</option>
    </select>
  </div>
  <div class="form-group">
    <label for="teacher_univ">Universitas</label>
    <input type="text" name="teacher_univ" class="form-control form-control-sm shadow-sm" required id="teacher_univ" required placeholder="Universitas" style="height: 50px;">
  </div> 
  </div>
  <div class="form-group">
    <label for="teacher_program">Tentor Program</label>
    <select id="teacher_program" name="teacher_program" class="form-control form-control-sm shadow-sm" required style="height: 50px;">
    	<option selected value="">Tentor Program</option>
    	<option value="kursus">Kursus</option>
    	<option value="class">Bimbingan Kelas</option>
    	<!-- <option>Program Kerjasama</option> -->
    </select>
  </div>
  <div class="form-group" id="mapel_box" >
    <label for="teacher_program" id="label_mapel" style="display: none;">Mata Pelajaran</label>
    <select id="teacher_kursus" name="teacher_mapel" class="form-control form-control-sm shadow-sm" required style="height: 50px; display: none;" disabled>
      <option value="" selected>Kursus</option>
      <option value="english">Kursus Bahasa Inggris</option>
      <option value="math">Kursus Matematika</option>
      <option value="arab">Kursus Bahasa Arab</option>
    </select>
    
    <select id="teacher_mapel" name="teacher_mapel" class="form-control form-control-sm shadow-sm" required style="height: 50px; display: none;" disabled>
      <option selected value="">Mapel</option>
      @foreach($data_mapel as $mapel)
        <option value="{{$mapel->id}}">{{$mapel->nama}}</option>
      @endforeach
    </select>

  </div>
  <div id="new_teacher_2">
    <div class="form-group">
    <label for="teacher_phone">No. Telpon</label>
    <input type="text" name="teacher_phone" class="form-control form-control-sm shadow-sm" required id="teacher_phone" required placeholder="Nomor Telpon/Hp" style="height: 50px;">
  </div>
  <div class="form-group">
    <label for="teacher_foto">Foto</label>
    <input type="file" name="teacher_foto" class="form-control-flie" required id="teacher_foto" accept=".jpg" style="height: 50px;">
  </div>
  </div>
  <button class="btn btn-primary btn-sm" type="submit">Submit</button>
  <button class="btn btn-warning btn-sm" id="reset" type="reset">Reset</button>
</form>

<script type="text/javascript">
  // $('#teacher_email').on('keyup',function(){
  //   var t_email = $('#teacher_email').val();
  //   $('#alert_email').html(t_email.length);
  //   if (t_email.length==0) {
  //     $('.alert').css('display','none');
  //   }
  // })
  
  $('#reset').click(function(){
    $('.alert').css('display','none');
  }); 
</script>

<script type="text/javascript">
  $('#existed').click(function(){
    $('#s_teacher').prop('disabled',false);
    $("#new_teacher :input").prop('disabled', true);
    $("#new_teacher_2 :input").prop('disabled', true);
    $("#new_teacher_2").css('display', 'none');
    $('#new_teacher').slideUp('fast');
    $('#existed_teacher').css('display','block');
  })

  $('#new').click(function(){
    $('#s_teacher').prop('disabled',true);
    $("#new_teacher :input").prop('disabled', false);
    $('#new_teacher').slideDown('fast');
    $("#new_teacher_2 :input").prop('disabled', false);
    $("#new_teacher_2").css('display', 'block');
    $('#existed_teacher').css('display','none');
  });
</script>

<script type="text/javascript">
  $('#teacher_program').on('change',function(){
    var prog = $(this).val();
    if (prog=='class') {
      $('#label_mapel').css('display','block');
      $('#teacher_mapel').slideDown('slow');
      $('#teacher_mapel').prop('disabled',false);
      $('#teacher_kursus').prop('disabled',true);
      $('#teacher_kursus').slideUp('slow');  
    }
    if (prog=='kursus') {
      $('#teacher_mapel').slideUp('slow');
      $('#teacher_kursus').slideDown('slow'); 
      $('#teacher_kursus').prop('disabled',false);
      $('#teacher_mapel').prop('disabled',true);
    }
  });
</script>

<script type="text/javascript">
  $(document).ready(function(){
    $('#myBtn').click(function(){
      $('#myModal').css("display","block");
    });
    $('.tutup').click(function(){
      $('#myModal').css("display","none");
    });
  })
</script>