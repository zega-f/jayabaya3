<?php

namespace App\Http\Middleware;

use Closure;

class adminAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if () {
            # code...
        }
        return $next($request);
    }
}
