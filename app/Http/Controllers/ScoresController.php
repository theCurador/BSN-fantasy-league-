<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Maatwebsite\Excel\Files\ExcelFile;
use App\Players;
use App\UserPlayers;
use App\MatchScores;
use App\FantasyScores;
use App\Team;
use Input;
use DB;


class ScoresController extends Controller
{
	public function index(Request $request){

		return view('back.scores.index')
		->with('error', '')
		->with('qq', '');
	}

	public function store(Request $request){
		if (Input::file('csv')->isValid()) {
		      $destinationPath = '/var/www/laravel/storage/app/scores'; // upload path
		      $fileName = $request->input('match_id').'.csv'; // renameing image
		      Input::file('csv')->move($destinationPath, $fileName); // uploading file to given path
		      $error = "Įkelta";
		  }

		  $results = \Excel::load('storage/app/scores/'.$fileName)->select(array('name'))->get();
		  $players = new Players;
		  $players = $players
		  ->join('fantasy_contracts', 'fantasy_contracts.player_id', '=', 'fantasy_players.player_id')
		  ->whereIn('fantasy_players.name', $results)
		  ->select('fantasy_players.name', 'fantasy_contracts.contract_id', 'fantasy_players.player_id')
		  ->get();
		  $resultsAll = \Excel::load('storage/app/scores/'.$fileName)->all();

		  foreach($players as $player){        
		  	foreach($resultsAll as $resultAll){
		  		if($player->name == $resultAll->name)
		  			$player['points'] = $resultAll->eff;
		  	}
		  }


		  foreach ($players as $player) {
		  	$matchScores = new MatchScores;
		  	$matchScores->match_id = $request->input('match_id');
		  	$matchScores->contract_id = $player->contract_id;
		  	$matchScores->points = $player->points;
		  	$matchScores->save();
		  }

		  return view('back.scores.index')
		  ->with('error', $error)
		  ->with('path2', $request->input('match_id'))
		  ->with('qq', '') ;
		}		

		public function storeteamscores(Request $request){		

			$teams = new Team;
			$teamsInfo = $teams->join('fantasy_user_players', 'fantasy_teams.team_id', '=', 'fantasy_user_players.team_id')
			->join('fantasy_match_scores', 'fantasy_user_players.id', '=', 'fantasy_match_scores.contract_id')
			->select('fantasy_teams.team_id',
				'fantasy_teams.team_name',
				'fantasy_teams.team_points',
				'fantasy_user_players.match_player', 
				'fantasy_user_players.id as contract_id', 
				'fantasy_match_scores.match_id',
				'fantasy_match_scores.points')
			->get();

			$teamPoints = [];

			foreach ($teams->select('team_id', 'team_points as points')->get() as $team){
			//$teamPoints = array_add($teamPoints, $team->team_id, $team->points);
				$teamPoints[] = ['team_id' => $team->team_id, 'points' => $team->points];
			}

		//team_id, match_id, contract_id, points
			foreach ($teamsInfo as $teamPlayer) {
				$fantasyScores = new FantasyScores;
				if($teamPlayer->match_player == 1 && !$fantasyScores->where('match_id', $teamPlayer->match_id)->where('contract_id', $teamPlayer->contract_id)->first()){				
				$fantasyScores->team_id = $teamPlayer->team_id;
				$fantasyScores->match_id = $teamPlayer->match_id;
				$fantasyScores->contract_id = $teamPlayer->contract_id;
				$fantasyScores->points = $teamPlayer->points;
				$fantasyScores->save();

				//$teamPoints[$teamPlayer->team_id] += $teamPlayer->points;
				foreach ($teamPoints as $teamPoint => $value) {
					if ($teamPoints[$teamPoint]['team_id'] == $teamPlayer->team_id) {
						$teamPoints[$teamPoint]['points'] += $teamPlayer->points;
					}
				}
			}
		}

		/*foreach ($teamPoints as $teamPoint => $value) {
			$teamPoints[$teamPoint]['points'] = $teamPoint['points'] + 10;			
		}*/
		
		foreach ($teamPoints as $key => $value) {
			DB::table('fantasy_teams')->where('team_id', $teamPoints[$key]['team_id'])->update(['team_points'=> $teamPoints[$key]['points']]);
		}
		//$teamPoints = $teams->where('team_id', $teamPoints[$teams->team_id])->get();

		
		return view('back.scores.index')
		->with('error', '')
		->with('qq', $teamPoints);
	}		
}
