<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Team;

class ViewTeamInfoController extends Controller
{
    //

    public function index($name){
        $team = new Team;
        
        if(!$team->where('team_name', $name)->first())
            return redirect()->back();

    	$res = $team
    	->join('fantasy_user_players', 'fantasy_teams.team_id', '=', 'fantasy_user_players.team_id')
    	->join('fantasy_players', 'fantasy_user_players.id', '=', 'fantasy_players.player_id')
    	->where('team_name', $name)->get();

    	
    	return view('front.test')
		->with('team', $res);
    }
}

/*
$paginate = $players
			->join('fantasy_contracts', 'fantasy_players.player_id', '=', 'fantasy_contracts.player_id')
			->join('fantasy_club', 'fantasy_contracts.club_id', '=', 'fantasy_club.club_id')
			->where('club_short_name', $request->club)
			->where('position', $request->position)
			->paginate(10);
			*/