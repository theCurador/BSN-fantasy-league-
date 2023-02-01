<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contracts extends Model
{
    protected $table = 'fantasy_contracts';

   public function user(){
   	return $this->hasManyThrough('App\UserPlayers', 'App\Models\User', 'id', 'contract_id');
   }

   public function club(){
   	return $this->hasMany('App\Club', 'club_id');
   }


   
}
