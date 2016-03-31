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
<div class="col-lg-1"></div>
<div class="panel panel-default col-lg-4">
	<div class="panel-body ">
		<h4 class="text-center">Komandų rezultatai</h4>
		<table class="table table-bordered">
			<tr>
				<td>Vieta</td>
				<td>Komanda</td>
				<td>Taškai</td>
			</tr>
			<tr>
				<td>1</td>
				<td>Kryžmantas</td>
				<td>300</td>
			</tr>
			<tr>
				<td>2</td>
				<td>Suolas</td>
				<td>200</td>
			</tr>
			<tr>
				<td>3</td>
				<td>Pelė</td>
				<td>100</td>
			</tr>
		</table>
	</div>

</div>
</div>
@stop