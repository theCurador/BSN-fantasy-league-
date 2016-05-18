@extends('test.template')

@section('content')
<div class="container">
	<div class="panel panel-default col-lg-7">
		<div class="panel-body ">
			<h4><b>„{{$team->team_name}}“</b> komandos varžybų žaidėjų paraiška</h4>
			<h3 class="custom-game-player-list-h3">Taškai: {{$team->team_points}}</h3>
			@if($isHaveGamePlayer->count() != 0)
			<table class="table table-bordered table-responsive">
				<tr>
					<td>#</td>
					<td>Žaidėjo vardas</td>
					<td>Pozicija</td>
					<td>Klubas</td>
					<td>Taškai</td>
					<td>Startinio penketo žaidėjas</td>
				</tr>

				@foreach ($userPlayers as $userPlayer)
				<tr>					
					@foreach ($match as $isMatch)									
						@if($isMatch->match_player == 1 && $isMatch->id == $userPlayer->contract_id)
							@foreach ($players->where('player_id', '=', $userPlayer->contract_id)->get() as $list)								
								<td>{{$i++}}</td>
								<td>{{$list->name}}</td>
								<td>{{$list->position}}</td>								
								<td>{{$club->where('club_id', $userPlayer->club_id)->select('club_name')->first()->club_name}}</td>
								<td>0</td>
								@if($isMatch->starting_five == 1)
									<td>Taip</td>
								@else
									<td>Ne</td>
								@endif					
							@endforeach
						@endif
					@endforeach								
				</tr>												
				@endforeach					
			</table>
			@else
			<h3>Jūsų varžybų paraiška tuščia</h3>
			@endif
		</div>
		
	</div>
	@include('test.sidebarr.team_result')
</div>

@stop
