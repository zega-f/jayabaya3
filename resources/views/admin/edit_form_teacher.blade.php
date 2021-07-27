<div class="row">
<div class="col-xl-6 center" style="background-color: white; border-radius: 5px; padding: 20px;">

<b>Edit Data Pengajar</b>
<button class="btn btn-warning btn-sm tutup" id="" style="float: right;">x</button>
<hr class="hr-orange">
  @foreach($data_teacher as $dt)
<form style="overflow: auto; height: 300px; padding: 0 20px 0 20px;" enctype="multipart/form-data" action="update_teacher" method="post">
<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
@csrf
<input type="text" name="teacher_id" hidden value="{{$dt->id}}">
  <div class="form-group">
    <label for="teacher_name">Nama</label>
    <input type="nama" name="teacher_name" class="form-control form-control-sm" id="teacher_name" required  placeholder="Nama lengkap" value="{{$dt->UserName}}" >
  </div>
  <div class="form-group">
    <label for="teacher_email">Email address</label>
    <input type="email" name="teacher_email" class="form-control form-control-sm" id="teacher_email" required  placeholder="Enter email" value="{{$dt->UserEmail}}">
    <div id="alert_email"></div>
  </div>
  <div class="form-group">
    <label for="teacher_gender">Jenis Kelamin</label>
    <select class="form-control form-control-sm" required id="teacher_gender" name="teacher_gender">
      <option value="{{$dt->jenis_kelamin}}" selected>{{$dt->jenis_kelamin}}</option>
      <option>Laki - laki</option>
      <option>Perempuan</option>
    </select>
  </div>
  <div class="form-group">
    <label for="teacher_tempatlahir">Tempat Lahir</label>
    <input type="text" name="teacher_tempatlahir" class="form-control form-control-sm" required id="teacher_tempatlahir"  placeholder="Tempat Lahir" value="{{$dt->tempat_lahir}}">
  </div>
  <div class="form-group">
    <label for="teacher_tgllahir">Tanggal Lahir</label>
    <input type="date" name="teacher_tgllahir" class="form-control form-control-sm" required id="teacher_tgllahir" value="{{$dt->tgl_lahir}}">
  </div>
  <div class="form-group">
    <label for="teacher_alamat">Alamat</label>
    <input type="text" name="teacher_alamat" class="form-control form-control-sm" required id="teacher_alamat"  placeholder="Alamat" value="{{$dt->alamat}}">
  </div>
  <div class="form-group">
    <label for="teacher_pendidikan">Pendidikan</label>
    <select id="teacher_pendidikan" name="teacher_pendidikan" class="form-control form-control-sm" required>
      <option selected value="{{$dt->pendidikan}}">Pendidikan</option>
      <option>Strata 1</option>
      <option>Strata 2</option>
      <option>Strata 3</option>
    </select>
  </div>
  <div class="form-group">
    <label for="teacher_univ">Universitas</label>
    <input type="text" name="teacher_univ" class="form-control form-control-sm" required id="teacher_univ" required placeholder="Universitas" value="{{$dt->universitas}}">
  </div>
  <div class="form-group">
    <label for="teacher_program">Tentor Program</label>
    <select id="teacher_program" name="teacher_program" class="form-control form-control-sm" required>
      <option selected value="{{$dt->tentorProgram}}">Tentor Program</option>
      <option>Bahasa Inggris</option>
      <option>Matematika</option>
      <option>Bimbingan Kelas</option>
      <option>Program Kerjasama</option>
    </select>
  </div>
  <div class="form-group">
    <label for="teacher_phone">No. Telpon</label>
    <input type="text" name="teacher_phone" class="form-control form-control-sm" required id="teacher_phone" required placeholder="Nomor Telpon/Hp" value="{{$dt->telp}}">
  </div>
  <div class="form-group">
    <div class="row">
      <div class="col-6">
        <label for="img_teacher">Foto </label>
        <img src="{{$dt->UserAvatar}}" style="width: 100%;" id="img_teacher">
      </div>
      <div class="col-6">
        <label for="teacher_foto">*Upload ulang untuk mengganti foto</label>
        <input type="file" name="teacher_foto" id="teacher_foto" accept=".jpg">
      </div>
    </div>
    
  </div>
  <button class="btn btn-primary btn-sm" type="submit">Submit</button>
</form>
@endforeach
</div>
</div>
<script type="text/javascript">
  // $(document).ready(function(){
    
    $('.tutup').click(function(){
      $('#form-teacher').css("display","none");
    });
  // })
</script>