<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class ScoresController extends Controller
{
    public function index(Request $request){
		
		
		return view('back.scores.index')->with('error', '');
	}

	public function store(Request $request){
		

			return "ok";
	}		
}
