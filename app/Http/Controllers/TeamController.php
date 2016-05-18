<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Team;
use Session;
use Illuminate\Http\RedirectResponse;

class TeamController extends Controller
{
	

	public function index($error = null){
		$teamResults = Team::orderBy('team_points', 'desc')->take(10)->get();
		return view('test.create_team', ['error' => $error])
			->with('teamResults', $teamResults)
			->with('j', $j=1);
	}

	public function store(Request $request){
		$team = new Team;
		if($request->team_name == '' || strlen($request->team_name) < 5){
			return TeamController::index('Komandos vardas per trumpas.');
		}elseif($team->where('team_name', $request->team_name)->first()){
			return TeamController::index('Toks vardas jau egzistuoja.');
		}elseif ($team->where('user_id', $request->user()->id)->first()) {
			return TeamController::index('Jūs jau turite komandą.');		
		}else{
			$team->team_name = $request->team_name;
			//$team->user_id = $request->session()->get('login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d');
			$team->user_id = $request->user()->id;
			$team->save();

			return new RedirectResponse(url('add_player_in_team'));
		}		
	}
}
