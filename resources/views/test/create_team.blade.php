@extends('test.template')

@section('content')
<div class="container">
	<div class="panel panel-default col-lg-7">
		<div class="panel-body ">
			<h4>Susikurk komandą</h4>
			{!!Form::open(['url' => 'create_team', 'method' => 'post', 'role' => 'form', 'class' => 'navbar-form navbar-left']) !!}
			@if ($error != '')
			<small class="help-block">{{ $error }}</small>
			@endif
			{!!Form::text('team_name', null, ['class' => 'form-control custom-input-create-team', 'placeholder' => 'Komandos vardas'])!!}
			{!!Form::submit('Sukurti')!!}
			{!!Form::close()!!}
			<!--
			<form action="/create_team" method="POST" class="navbar-form navbar-left">
				<div class="input-group">
					<input type="text" name="team_name" class="form-control custom-input-create-team" placeholder="Komandos vardas">
					<input type="hidden" name="_token" value="{{ csrf_token() }}">

				</div>
				<input type="submit" name="createTeamOk" class="btn btn-default custom-create-team-button" value="Sukurti">
			</form>
		-->
		
	</div>

</div>

@include('test.sidebarr.team_result')

</div>
@stop