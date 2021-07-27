@extends('admin.adminlayout.main')
@section('content')
  <div class="container shadow rounded" style="max-width: 500px; margin: 30px auto; padding: 20px; background-color: white;">
    <h5><strong>{{Session::get('name')}}</strong></h5>
    <hr>
    @if ($message = Session::get('fail'))
    <div class="alert alert-danger alert-sm" id="alert">
        <p>{{ $message }} Harap coba kembali</p>
    </div>
    @endif
    <form action="{{url('admin_store_new_pass')}}" method="post">
    @csrf
    <label for="password">Password baru Anda</label>
        <div class="input-group mt-3 mb-3">
            <input type="password" name="password" class="@error('password') is-invalid @enderror form-control form-control-sm border-light shadow-sm" style="height: 50px;" required autocomplete>
        </div>
        @error('password')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
        <label for="password_confirmation">Konfirmasi Password baru</label>
        <div class="input-group mt-3 mb-3">
            <input type="password" name="password_confirmation" class="form-control form-control-sm border-light shadow-sm" style="height: 50px;" required autocomplete>
        </div>
        <button class="btn btn-info btn-block" type="submit">Kirim</button>
    </form>
  </div>
@endsection

