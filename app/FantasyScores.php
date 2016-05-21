<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FantasyScores extends Model
{
    protected $fillable = ['team_id', 'match_id', 'constract_id', 'points'];
    protected $table = 'fantasy_scores';
    public $timestamps = false;}
