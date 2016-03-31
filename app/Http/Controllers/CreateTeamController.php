<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\CreateTeam;
use Session;
use Illuminate\Http\RedirectResponse;

class CreateTeamController extends Controller
{
	

	public function index($error = null){
		
		return view('test.create_team', ['error' => $error]);
	}

	public function store(Request $request){
		$team = new CreateTeam;
		if($request->team_name == '' || strlen($request->team_name) < 5){
			return CreateTeamController::index('Komandos vardas per trumpas.');
		}elseif($team->where('team_name', $request->team_name)->first()){
			return CreateTeamController::index('Toks vardas jau egzistuoja.');
		}elseif ($team->where('user_id', $request->session()->get('login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d'))->first()) {
			return CreateTeamController::index('Jūs jau turite komandą.');		
		}else{
			$team->team_name = $request->team_name;
			$team->user_id = $request->session()->get('login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d');
			$team->save();

			return new RedirectResponse(url('add_player_in_team'));
		}		
	}
}
