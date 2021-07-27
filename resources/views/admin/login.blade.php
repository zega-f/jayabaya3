@extends('admin.adminlayout.basic')
@section('content')
<div class="container mt-5 login-form shadow" style="background-color: white; padding: 20px; max-width: 400px; height: 500px; padding: 20px 50px; position: relative;">
    <h3 style=" margin: 50px auto; color: grey; text-align: center;"><b>LOGIN</b></h3>
    <form id="user_login" action="{{url('login-admin')}}" method="post">
        @csrf
        @if ($message = Session::get('fail'))
        <div class="alert alert-danger alert-sm" id="alert">
            <p>{{ $message }}</p>
        </div>
        @endif
        @if ($message = Session::get('success'))
        <div class="alert alert-success alert-sm" id="alert">
            <p>{{ $message }}</p>
        </div>
        @endif
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend"><span class="input-group-text ion-android-mail"></span></div>
                <input type="text" name="admin_email" id="admin_email" class="form-control" placeholder="E-mail" value="{{ old('admin_email') }}" style="height: 50px;">
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend"><span class="input-group-text ion-android-lock" style="font-size: 21px;"></span></div>
                <input type="password" name="admin_password" id="admin_password" class="form-control" placeholder="********" style="height: 50px;">
            </div>
        </div>
        <div class="form-group" style="font-size: 14px;">
            <input type="checkbox" name="remember-me"> Remember me
            <span style="float: right;"><a href="#">Lupa password?</a></span>
        </div>
        <button class="btn btn-info btn-lg btn-block">Login</button>
    </form>
    <p style="font-size: 14px; text-align: center; margin: 50px auto;"><a href="#">Akun disuspend?</a></p>
</div>
@endsection
