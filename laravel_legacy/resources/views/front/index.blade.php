@extends('front.template')


@section('content')
<div class="container">
	@if(session()->has('ok'))
	@include('partials/error', ['type' => 'success', 'message' => session('ok')])
	@endif	
	@if(isset($info))
	@include('partials/error', ['type' => 'info', 'message' => $info])
	@endif
	<div class="panel panel-default col-lg-7">
		<div class="panel-body ">
			<h4>Varžybų tvarkaraštis</h4>
			<table class="table table-bordered">
				<tr>
					<td>Namų komanda</td>
					<td>Svečių komanda</td>
					<td>Data</td>
				</tr>
				@foreach($matches as $match)
				<tr>
					<td>{{$match->home_name}}</td>
					<td>{{$match->guest_name}}</td>
					<td>{{$match->match_date}}</td>
				</tr>
				@endforeach
			</table>
			
			
		</div>
		


		
	</div>
	@include('front.sidebarr.team_result')
</div>


@stop