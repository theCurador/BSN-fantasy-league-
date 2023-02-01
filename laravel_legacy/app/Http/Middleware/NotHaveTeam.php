<?php

namespace App\Http\Middleware;

use Closure;
use App\Team;
use Session;
use Illuminate\Http\RedirectResponse;

class NotHaveTeam
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
        $team = new Team;
        if (!$team->where('user_id', session('login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d'))->first()) {
            return new RedirectResponse(url('create_team'));
        }
        return $next($request);
    }
}
