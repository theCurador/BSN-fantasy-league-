<?php

Route::group(['middleware' => ['web']], function () {

	// Home
	Route::get('/', [
		'uses' => 'HomeController@index', 
		'as' => 'home'
	]);
	Route::get('language/{lang}', 'HomeController@language')->where('lang', '[A-Za-z_-]+');


	// Admin
	Route::get('admin', [
		'uses' => 'AdminController@admin',
		'as' => 'admin',
		'middleware' => 'admin'
	]);

	Route::get('medias', [
		'uses' => 'AdminController@filemanager',
		'as' => 'medias',
		'middleware' => 'redac'
	]);

	Route::get('calcscores', [
		'uses' => 'ScoresController@index',
		'middleware' => 'admin'
	]);
	Route::post('calcscores', [
		'uses' => 'ScoresController@store',
		 'middleware' => 'admin'
	]);
	Route::post('calcteamscores', [
		'uses' => 'ScoresController@storeteamscores',
		 'middleware' => 'admin'
	]);


	

	// Blog
	Route::get('blog/order', ['uses' => 'BlogController@indexOrder', 'as' => 'blog.order']);
	Route::get('articles', 'BlogController@indexFront');
	Route::get('blog/tag', 'BlogController@tag');
	Route::get('blog/search', 'BlogController@search');

	Route::put('postseen/{id}', 'BlogController@updateSeen');
	Route::put('postactive/{id}', 'BlogController@updateActive');

	Route::resource('blog', 'BlogController');

	// Comment
	Route::resource('comment', 'CommentController', [
		'except' => ['create', 'show']
	]);

	Route::put('commentseen/{id}', 'CommentController@updateSeen');
	Route::put('uservalid/{id}', 'CommentController@valid');


	// Contact
	Route::resource('contact', 'ContactController', [
		'except' => ['show', 'edit']
	]);


	// User
	Route::get('user/sort/{role}', 'UserController@indexSort');

	Route::get('user/roles', 'UserController@getRoles');
	Route::post('user/roles', 'UserController@postRoles');

	Route::put('userseen/{user}', 'UserController@updateSeen');

	Route::resource('user', 'UserController');

	// Authentication routes...
	//Route::get('auth/login', 'Auth\AuthController@getLogin');
	Route::get('auth/login', function(){
		return view('front.login')->with('teamResults', App\Team::orderBy('team_points', 'desc')->take(10)->get())->with('j', $j=1);
	});
	Route::post('auth/login', 'Auth\AuthController@postLogin');
	Route::get('auth/logout', 'Auth\AuthController@getLogout');
	Route::get('auth/confirm/{token}', 'Auth\AuthController@getConfirm');

	// Resend routes...
	Route::get('auth/resend', 'Auth\AuthController@getResend');

	// Registration routes...
	//Route::get('auth/register', 'Auth\AuthController@getRegister');
	Route::get('auth/register', function(){
		return view('front.register')->with('teamResults', App\Team::orderBy('team_points', 'desc')->take(10)->get())->with('j', $j=1);
	});
	Route::post('auth/register', 'Auth\AuthController@postRegister');

	// Password reset link request routes...
	Route::get('password/email', 'Auth\PasswordController@getEmail');
	Route::post('password/email', 'Auth\PasswordController@postEmail');

	// Password reset routes...
	Route::get('password/reset/{token}', 'Auth\PasswordController@getReset');
	Route::post('password/reset', 'Auth\PasswordController@postReset');



	Route::get('team_player_list', ['uses' => 'TeamPlayerListController@index', 'middleware' => ['auth', 'notHaveTeam']]);
	Route::put('matchplayer/{id}', 'TeamPlayerListController@updateMatchPlayer');

	/*Route::get('create_team', function(){
		return view('test.create_team');
	});*/

	Route::get('game_player_list', ['uses' => 'GamePlayerListController@index', 'middleware' => ['auth', 'notHaveTeam']]);

	Route::get('add_player_in_team', ['uses' => 'AddPlayerInTeamController@index', 'middleware' => ['auth', 'notHaveTeam']]);
	Route::post('/add_player_in_team', array(
	    'as' => 'add_player_in_team.store',
	    'uses' => 'AddPlayerInTeamController@store',
	    'middleware' => 'auth'
	) );
	Route::get('filterPlayers', ['uses' => 'AddPlayerInTeamController@filterPlayers', 'middleware' => ['auth', 'notHaveTeam']]);


	Route::get('create_team', ['uses' => 'TeamController@index', 'middleware' => ['auth', 'haveTeam']]);
	Route::post('create_team', ['uses' => 'TeamController@store', 'middleware' => 'auth']);

	Route::get('results', ['uses' => 'ResultsController@index']);

	Route::get('teaminfo/{name}', ['uses' => 'ViewTeamInfoController@index', 'middleware' => 'auth']);



});
