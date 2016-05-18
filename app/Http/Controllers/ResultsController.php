<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Team;

class ResultsController extends Controller
{
    public function index (){
    	$teamResults = Team::orderBy('team_points', 'desc')->paginate(20);
    	return view('test.results')->with('teamResults', $teamResults)->with('j', $j = 1);
    }
}
