<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CreateTeam extends Model
{
	protected $fillable = ['team_name', 'user_id'];
    protected $table = 'fantasy_teams';
    public $timestamps = false;
}
