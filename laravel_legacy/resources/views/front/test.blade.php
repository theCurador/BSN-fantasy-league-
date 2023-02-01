@extends('front.template')

@section('head')

@stop

@section('content')

<div class="container">
	<div class="panel panel-default col-lg-7">
		<div class="panel-body ">
			<table>			
			@foreach ($team as $list)
				<p>{{$list->name}}</p>
			@endforeach
			</table>
		</div>

	</div>
	
</div>

@stop
