<?php

namespace App\Http\Middleware;

use Closure;
use App\CreateTeam;
use Session;
use Illuminate\Http\RedirectResponse;

class HaveTeam
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
        $team = new CreateTeam;
        if ($team->where('user_id', session('login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d'))->first()) {
            return new RedirectResponse(url('/'));
        }
        return $next($request);
    }
}
