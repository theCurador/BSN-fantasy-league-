<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserPlayers extends Model
{
	protected $fillable = ['team_id', 'user_id', 'id'];
    protected $table = 'fantasy_user_players';
    public $timestamps = false;

   public function user(){
    	return $this->belongsToMany('App\Models\User');
    }
	

}
