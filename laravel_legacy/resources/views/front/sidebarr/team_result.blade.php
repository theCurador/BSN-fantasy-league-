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
				@foreach($teamResults as $teamResult)
					<tr>
						<td>{{$j++}}</td>
						<td>{{$teamResult->team_name}}</td>
						<td>{{$teamResult->team_points}}</td>
					</tr>
				@endforeach				
			</table>
		</div>
		
	</div>