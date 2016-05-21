@extends('test.template')

@section('head')
<meta name="csrf-token" content="{{ csrf_token() }}">

<script type="text/javascript">

</script>
@stop

@section('content')
<div class="container">
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="row">
				<div class="col-md-6"><h3>Žaidėjų sąrašas</h3></div>
				<div class="col-md-6"><h3>Taškai: {{$teamPoints}}</h3></div>
			</div> 
			<div class="row">
				<div class="col-md-6">
					@if($userPlayers->count() != 0)	
					<table class="table table-bordered table-responsive">
					<tr>
						<td>#</td>
						<td>Žaidėjo vardas</td>
						<td>Pozicija</td>
						<td>Klubas</td>
						<td>Efektyvumas</td>
						<td>Kaina</td>
					</tr>

					@foreach ($userPlayers as $userPlayer)
						<tr>
							@foreach ($match as $isMatch)
							@if($isMatch->id == $userPlayer->contract_id)
							@foreach ($players->where('player_id', '=', $userPlayer->contract_id)->get() as $list)
							
							<td>{{$i++}}</td>
							<td>{{$list->name}}</td>
							<td>{{trans('front/site.'.$list->position)}}</td>
							<td>@foreach ($club->where('club_id', $userPlayer->club_id)->select('club_name')->get() as $clubName) {{$clubName->club_name}}@endforeach</td>
							<td>{{$list->eff}}</td>
							<td>{{$list->price}}</td>
							@endforeach
							@endif
							@endforeach
					@endforeach
						</tr>
				</table>
				@else
				<h3>Jūs neturite žaidėjų.</h3>
				@endif
				
				
				</div>
				<div class="col-md-6"><h3>Kreditai: {{$userCredits}}</h3>
					<form action="filterPlayers" method="GET" calss="navbar-form">	
					<label for="sel1">Pasirinkite klubą</label>
					<select class="form-control custom-select-position-width" id="sel1" name="club">
							<option value="all">Visi klubai</option>
							<option value="ZAL">Žalgiris</option>
							<option value="LR">Lietuvos rytas</option>
							<option value="VYT">Vytautas</option>
							<option value="PZV">Pieno Žvaigždės</option>
							<option value="JUV">Juventus</option>
							<option value="SIA">Šiauliai</option>
							<option value="NEP">Neptūnas</option>
							<option value="LIET">Lietkabelis</option>
							<option value="NEV">Nevėžis</option>
							<option value="DZU">Dzūkija</option>
							
						</select>
					
					<label for="sel2">Pasirinkite poziciją</label>
					<select class="form-control custom-select-position-width" name="position" id="sel2">
						<option value="all">Visos pozicijos</option>
						<option value="guard">Gynėjas</option>
						<option value="forward">Puolėjas</option>>
						<option value="center">Centras</option>
					</select>				
					<input type="submit" class="btn btn-default" value="Filtruoti">
				</form><br>
					
					<label for="table1">Žaidėjai</label>
					<table class="table table-bordered table-responsive" id="table1">
					<tr>							
						<td>Pirkti</td>
						<td>Žaidėjo vardas</td>
						<td>Pozicija</td>
						<td>Klubas</td>
						<td>EFF</td>							
						<td>Kaina</td>
					</tr>
				@foreach($playersList->getCollection() as $listItem)
					<tr>
						<td class="text-center">
							{!! Form::open( ['route' => 'add_player_in_team.store']) !!}
								{{ Form::hidden('player_id', $listItem->player_id) }}								
								<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
							{!! Form::close() !!}
						</td>
						<td>{{$listItem->name}}</td>
						<td>{{trans('front/site.'.$listItem->position)}}</td>
						<td>{{$club->where('club_id', $contracts->where('player_id', $listItem->player_id)->select('club_id')->first()->club_id)->select('club_name')->first()->club_name}}</td>
						<td>{{$listItem->eff}}</td>
						<td>{{$listItem->price}}</td>
					</tr>
				@endforeach
				</table>
				<p>{{$playersList->appends(['club' => $filterClub, 'position' => $filterPosition])->links()}}</p>

				</div>
			</div> 

		</div>
	</div>
</div>
@stop
