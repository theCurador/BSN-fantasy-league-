<?php

namespace App\Http\Controllers;

use App\Jobs\ChangeLocale;
use App\Team;
use App\Match;
use App\Club;



class HomeController extends Controller
{

	/**
	 * Display the home page.
	 *
	 * @return Response
	 */
	public function index()
	{
		$teamResults = Team::orderBy('team_points', 'desc')->take(10)->get();
		$matchDb = new Match;
		$match = $matchDb->join('fantasy_club as home', 'fantasy_match.home_club_id', '=', 'home.club_id')
			->join('fantasy_club as guest', 'fantasy_match.guest_club_id', '=', 'guest.club_id')
			->select('home.club_name as home_name', 'guest.club_name as guest_name', 'match_date')
		->get();



		return view('test.index')
		->with('teamResults', $teamResults)
		->with('j', $j=1)
		->with('matches', $match)		;
	}

	/**
	 * Change language.
	 *
	 * @param  App\Jobs\ChangeLocaleCommand $changeLocale
	 * @param  String $lang
	 * @return Response
	 */
	public function language( $lang,
		ChangeLocale $changeLocale)
	{		
		$lang = in_array($lang, config('app.languages')) ? $lang : config('app.fallback_locale');
		$changeLocale->lang = $lang;
		$this->dispatch($changeLocale);

		return redirect()->back();
	}

}
