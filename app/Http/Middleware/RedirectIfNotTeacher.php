<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class RedirectIfNotTeacher
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if (Session::get('userType')!=0) {
            if (Session::get('userlevel')=="admin") {
                return redirect('welcome');
            }
            else{
                return redirect('home');
            }
        }
        return $next($request);
    }
}
