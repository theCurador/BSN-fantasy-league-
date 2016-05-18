<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\UserPlayers;
use App\Players;
use App\Club;
use App\Team;

class TeamPlayerListController extends Controller
{
    public function index(Request $request){
		//$userPlayers = UserPlayers::where('user_id', $request->user()->id)->get();
		$userPlayers = $request->user()->userContractsPlayers;
		$players = new Players;
		$club = new Club;
		$match = $request->user()->userPlayers;
		$teamResults = Team::orderBy('team_points', 'desc')->take(10)->get();
		
		return view('test.team_player_list')
			->with('userPlayers', $userPlayers)
			->with('players', $players)
			->with('club', $club)
			->with('i', $i=1)
			->with('match', $match)
			->with('team', $request->user()->team)
			->with('teamResults', $teamResults)
			->with('j', $j=1);
	}

	public function updateMatchPlayer(Request $request, $id){
		if($request->checked == "true"){
			UserPlayers::where('id', $id)->where('user_id', $request->user()->id)->update(['match_player' => '1']);
			//$request->user()->userPlayers->where('id', $id)->update(['match_player' => '1']);
		}else{
			UserPlayers::where('id', $id)->where('user_id', $request->user()->id)->update(['match_player' => '0']);
			//$request->user()->userPlayers->where('id', $id)->update(['match_player' => '0']);
		}
		return $id." ".$request->checked." ".$request->user()->id;
	}
}
