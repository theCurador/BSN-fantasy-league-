<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MatchScores extends Model
{
    protected $fillable = ['match_id', 'constract_id', 'points'];
    protected $table = 'fantasy_match_scores';
    public $timestamps = false;
}
