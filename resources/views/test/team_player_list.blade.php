@extends('test.template')

@section('head')
	<script>		
		$(function() {
/*
			// Seen gestion
			$(":checkbox[name='seen']").change(function() {     
				$(this).parents('.panel').toggleClass('panel-warning').toggleClass('panel-default');
				$(this).hide().parent().append('<i class="fa fa-refresh fa-spin"></i>');
				var token = $('input[name="_token"]').val();
				$.ajax({
					url: 'commentseen/' + this.value,
					type: 'PUT',
					data: "seen=" + this.checked + "&_token=" + token
				})
				.done(function() {
					$('.fa-spin').remove();
					$('input[type="checkbox"]:hidden').show();
				})
				.fail(function() {
					$('.fa-spin').remove();
					var chk = $('input[type="checkbox"]:hidden');
					chk.parents('.panel').toggleClass('panel-warning').toggleClass('panel-default');
					chk.show().prop('checked', chk.is(':checked') ? null:'checked');
					alert('{{ trans('back/comments.fail') }}');
				});
			});

			

		
*/

	// Seen gestion
			$(":checkbox[name='match_player']").change(function() {  				
				var token = $('input[name="_token"]').val();
				$.ajax({
					url: 'matchplayer/' + this.value,
					type: 'PUT',
					data: "checked=" + this.checked + "&_token=" + token
				})
				.done(function(){
					
				})
				.fail(function(){
					
				});
			});

			

		});


	</script>

@stop

@section('content')

<div class="container">
	<div class="panel panel-default col-lg-7">
		<div class="panel-body ">
			<h4><b>„{{$team->team_name}}“</b> komandos žaidėjų paraiška</h4>
			<h3 class="custom-game-player-list-h3">Taškai: {{$team->team_points}}</h3>
			
			@if($userPlayers->count() != 0)	
				<table class="table table-bordered table-responsive">
					<tr>
						<td></td>
						<td>#</td>
						<td>Žaidėjo vardas</td>
						<td>Pozicija</td>
						<td>Klubas</td>
						<td>Efektyvumas</td>
						<td>Taškai</td>
						<td>Kaina</td>
					</tr>

					@foreach ($userPlayers as $userPlayer)
						<tr>
							@foreach ($match as $isMatch)
							@if($isMatch->id == $userPlayer->contract_id)
							@foreach ($players->where('player_id', '=', $userPlayer->contract_id)->get() as $list)
							<td><input type="checkbox" name="match_player" @if($isMatch->match_player == 1) checked @endif value="{{$list->player_id}}">
								<input type="hidden" name="_token" value="{{ csrf_token() }}">
							</td>
							<td>{{$i++}}</td>
							<td>{{$list->name}}</td>
							<td>{{trans('front/site.'.$list->position)}}</td>							
							<td>{{$club->where('club_id', $userPlayer->club_id)->select('club_name')->first()->club_name}}</td>
							<td>{{$list->eff}}</td>
							<td>0</td>
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

		</div>
		@include('test.sidebarr.team_result')
	</div>

	@stop
