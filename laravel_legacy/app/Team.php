<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
	protected $fillable = ['team_name', 'user_id'];
    protected $table = 'fantasy_teams';
    public $timestamps = false;

    public function user(){
    	return $this->belongsTo('App\Models\User');
    }
}
