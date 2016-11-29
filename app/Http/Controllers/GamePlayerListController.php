<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\UserPlayers;
use App\Players;
use App\Team;
use App\Club;


class GamePlayerListController extends Controller
{
    public function index(Request $request){
		//$userPlayers = UserPlayers::where('user_id', $request->user()->id)->get();
		$userPlayers = $request->user()->userContractsPlayers;
		$players = new Players;
		$club = new Club;
		$match = $request->user()->userPlayers;
		$isHaveGamePlayer = $request->user()->userPlayers->where('match_player', '1');
		$teamResults = Team::orderBy('team_points', 'desc')->take(10)->get();

		
		return view('front.game_player_list')
			->with('userPlayers', $userPlayers)
			->with('players', $players)
			->with('club', $club)
			->with('i', $i=1)
			->with('match', $match)
			->with('team', $request->user()->team)
			->with('isHaveGamePlayer', $isHaveGamePlayer)
			->with('teamResults', $teamResults)
			->with('j', $j=1);
	}
}
