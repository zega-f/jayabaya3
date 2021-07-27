<div class="row">
<div class="col-xl-6 col-lg-6 col-md-6 center" style="background-color: white; border-radius: 5px; padding: 20px;">
<b>Cek pembayaran</b><span style="float: right;" class="ion-android-close pointer" id="tutup"></span>

<hr>
  @foreach($data_new_member_2 as $dpb)
<form style="overflow: auto; height: 300px; padding: 0 20px 0 20px;" enctype="multipart/form-data" action="{{url('verified')}}" method="post">
<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
@csrf
<input type="text" name="pendaftaran_id" value="{{$dpb->id}}" hidden>
  <div class="form-group">
    <label for="pendaftar_name">Jenis Kursus</label>
    <input type="nama" name="pendaftar_course" class="form-control form-control-sm border-light shadow-sm" id="pendaftar_course" required  placeholder="Nama lengkap" value="{{$dpb->course}}" readonly style="height: 50px;">
  </div>
  <div class="form-group">
    <label for="pendaftar_name">Nama</label>
    <input type="nama" name="pendaftar_name" class="form-control form-control-sm border-light shadow-sm" id="pendaftar_name" required  placeholder="Nama lengkap" value="{{$dpb->name}}" disabled style="height: 50px;">
  </div>
  <div class="form-group">
    <label for="pendaftar_email">Alamat</label>
    <input type="email" name="pendaftar_email" class="form-control form-control-sm border-light shadow-sm" id="pendaftar_email" required  placeholder="Enter email" value="{{$dpb->address}}" disabled style="height: 50px;">
    <div id="alert_email"></div>
  </div>
  <div class="form-group">
    <label for="pendaftar_gender">Jenis Kelamin</label>
    <select class="form-control form-control-sm border-light shadow-sm" required id="pendaftar_gender" name="pendaftar_gender" disabled style="height: 50px;">
      <option value="{{$dpb->sex}}" selected >
      @if($dpb->sex==1)
      Laki- laki
      @else
      Perempuan
      @endif
      </option>
      <option value="1">Laki - laki</option>
      <option value="0">Perempuan</option>
    </select>
  </div>
  <div class="form-group">
    <label for="pendaftar_tempatlahir">Bukti Pembayaran</label>
    @if(empty($dpb->bukti))
    <br>
    <div class="alert alert-danger" role="alert">
      Pendaftar belum melakukan pembayaran
    </div>
    @else
    <img src="http://localhost:8080/jayabaya/{{$dpb->bukti}}" style="width: 100%;">
    @endif
  </div>
  @if(!empty($dpb->bukti))
  <button class="btn btn-primary btn-sm" type="submit">Verifikasi Pembayaran</button>
  @endif
</form>
@endforeach
</div>
</div>
<script type="text/javascript">
  // $(document).ready(function(){
    
    $('#tutup').click(function(){
      $('#form-pendaftar').css("display","none");
    });
  // })
</script>