@extends('front.template')

@section('content')
<div class="container">
	<div class="panel panel-default col-lg-12">
		<div class="panel-body ">
			<h4>Rezultatai</h4>
			<table class="table table-bordered">
				<tr>
					<td class="col-md-1">Vieta</td>
					<td class="col-md-5">Komanda</td>
					<td class="col-md-1">Taškai</td>
				</tr>
				@foreach($teamResults->getCollection() as $teamResult)
					<tr>
						<td>
							@if(isset($_GET['page']))
							{{$j++*$_GET['page']}}

							@else
								{{$j++}}
							@endif	
						</td>
						<td>{{$teamResult->team_name}}</td>
						<td>{{$teamResult->team_points}}</td>
					</tr>

				@endforeach				
			</table>
			<p>{{$teamResults->links()}}</p>

		</div>
		
	</div>
	
</div>

@stop
