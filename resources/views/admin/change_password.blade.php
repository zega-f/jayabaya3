@extends('admin.adminlayout.main')
@section('content')
  <div class="container shadow rounded" style="max-width: 500px; margin: 30px auto; padding: 20px; background-color: white;">
    <h5><strong>{{Session::get('name')}}</strong></h5>
    @if ($message = Session::get('fail'))
    <div class="alert alert-danger alert-sm" id="alert">
        <p>{{ $message }} Harap coba kembali</p>
    </div>
    @endif
    <form action="{{url('admin_verify_pass')}}" method="post">
    @csrf
    <label for="password">Masukkan password lama Anda!</label>
      <div class="input-group mt-3 mb-3">
        <input type="password" name="password" class="form-control form-control-sm border-light shadow-sm" style="height: 50px;" required>
      </div>
      <button class="btn btn-info btn-block" type="submit">Kirim</button>
    </form>
  </div>
@endsection

