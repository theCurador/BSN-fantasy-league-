<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Http\RedirectResponse;
use Response;
use Input;

use App\Http\Requests;
use App\UserPlayers;
use App\Players;
use App\Club;
use App\Contracts;
use App\Models\User;
use App\Config;

class AddPlayerInTeamController extends Controller
{
	public function index(Request $request){		
		$credits = $request->user()->credits;
		$userPlayers = $request->user()->userContractsPlayers;
		$players = new Players;
		$club = new Club;
		$match = $request->user()->userPlayers;
		
		if(($request->club == null && $request->position == null) || ($request->club == "all" && $request->position == "all")){
			$paginate = $players->paginate(10);
		}elseif($request->position != "all" && $request->position != null && ($request->club == null || $request->club == "all")){
			$paginate = $players->where('position', $request->position)->paginate(10);
		}elseif($request->club != "all" && $request->club != null && ($request->position == "all" || $request->position == null)){
			$paginate = $players
			->join('fantasy_contracts', 'fantasy_players.player_id', '=', 'fantasy_contracts.player_id')
			->join('fantasy_club', 'fantasy_contracts.club_id', '=', 'fantasy_club.club_id')->where('club_short_name', $request->club)->paginate(15);
		}else{
			$paginate = $players
			->join('fantasy_contracts', 'fantasy_players.player_id', '=', 'fantasy_contracts.player_id')
			->join('fantasy_club', 'fantasy_contracts.club_id', '=', 'fantasy_club.club_id')
			->where('club_short_name', $request->club)
			->where('position', $request->position)
			->paginate(10);
		}
		
		$testas = $players
			->join('fantasy_contracts', 'fantasy_players.player_id', '=', 'fantasy_contracts.player_id')
			->join('fantasy_club', 'fantasy_contracts.club_id', '=', 'fantasy_club.club_id')->where('club_short_name', 'SIA');

		


		return view('front.add_player_in_team')
		->with('userCredits', $credits)
		->with('teamPoints', $request->user()->team->team_points)
		->with('userPlayers', $userPlayers)
		->with('players', $players)
		->with('contracts', new Contracts)
		->with('playersList', $paginate)
		->with('club', $club)
		->with('i', $i=1)
		->with('match', $match)
		->with('filterClub', $request->club)
		->with('filterPosition', $request->position)
		->with('testas', $testas->get());
	}

	public function store(Request $request){
		$userPlayers = new UserPlayers;
		//$team->where('team_name', $request->team_name)->first()->contract_id;

		$playerContractId = Contracts::where('player_id', $request->player_id)->select('contract_id')->first()->contract_id;
		$playerClubId = Contracts::where('player_id', $request->player_id)->select('club_id')->first()->club_id;

		$countPlayers = $userPlayers
			->join('fantasy_contracts', 'fantasy_user_players.id', '=', 'fantasy_contracts.player_id')
			->join('fantasy_club', 'fantasy_contracts.club_id', '=', 'fantasy_club.club_id')
			->where('user_id', $request->user()->id)
			->where('fantasy_club.club_id', $playerClubId)->count();
		$config = Config::select()->first();

		
		if($userPlayers->where('user_id', $request->user()->id)->where('id', $playerContractId)->first()){
			$error = "havePlayer";
		}elseif(!($countPlayers < $config->same_team_player)){
			$error = "playerLimit";
		}elseif($request->user()->credits - Players::where('player_id', $request->player_id)->select('price')->first()->price <= 0){
			$error = "noCredits";
		}else{
			User::where('id', $request->user()->id)
			->update(['credits' => $request->user()->credits - Players::where('player_id', $request->player_id)->select('price')->first()->price]);
			$userPlayers->team_id = $request->user()->team->team_id;
			$userPlayers->user_id = $request->user()->id;
			$userPlayers->id = $playerContractId;
			$userPlayers->save();
			return redirect()->back();
		}
		//return new RedirectResponse(url('add_player_in_team'));
		return redirect()->back()->with('error', trans('front/site.'.$error));
	}

	public function filterPlayers(Request $request)
	{		
		return AddPlayerInTeamController::index($request);
	}


}
