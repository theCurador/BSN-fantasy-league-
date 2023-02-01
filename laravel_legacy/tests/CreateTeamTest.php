<?php

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Session\Middleware\StartSession;
use App\Models\User;


class CreateTeamTest extends TestCase
{
    protected $baseUrl = 'http://185.80.129.55';

     /**
         * Can see create team URL
         *
         * @return void
         */
     public function testGoToCreateTeam()
     {
        $this->withoutMiddleware();
        $this->visit('create_team')->seePageIs('create_team');
    }

     /**
         * User can't leave empty input field.
         *
         * @return void
         */
     public function testCantLeaveEmtyInputField()
     {
        $this->withoutMiddleware();
        $this->visit('/create_team')
        ->type('', 'team_name')
        ->withSession(['login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d' => '99'])
        ->press('Sukurti')        
        ->see('Komandos vardas per trumpas.');
    }

     /**
         * Can't be two same team name
         *
         * @return void
         */
     public function testCantBeTheSameTeamName()
     {

        $this->withoutMiddleware();
        $this->visit('/create_team')
        ->type('komanda', 'team_name')
        ->withSession(['login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d' => '99'])
        ->press('Sukurti')        
        ->see('Toks vardas jau egzistuoja.');
    }



     /**
     * User can create team
     *
     * @return void
     */
     public function testUserCanCreateTeam()
     {
        $user = factory(App\Models\User::class)->create();
        $this->actingAs($user)
        ->visit('/create_team')
        ->type('testineKomanda', 'team_name')
        ->withSession(['login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d' => '99'])
        ->press('Sukurti')        
        ->seePageIs('/add_player_in_team');
        
    }


    
}
