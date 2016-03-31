@extends('test.template')

@section('content')
<div class="container">
	<div class="panel panel-default col-lg-7">
		<div class="panel-body ">
			<h4>Varžybų žaidėjų paraiška</h4>
			<h3 class="custom-game-player-list-h3">Taškai: 500</h3>
			<table class="table table-bordered">
				<tr>
					<td>#</td>
					<td>Žaidėjo vardas</td>
					<td>Pozicija</td>
					<td>Klubas</td>
					<td>Taškai</td>
					<td>Stratinio penketo žaidėjas</td>
				</tr>
				<tr>
					<td>1</td>
					<td>Vytautas Šulskis</td>
					<td>Puolėjas</td>
					<td>Vytautas</td>
					<td>19.0</td>
					<td>Taip</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Karolis Guščikas</td>
					<td>Puolėjas</td>
					<td>Šiauliai</td>
					<td>5.5</td>
					<td>Ne</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Daniel Ewing</td>
					<td>Gynėjas</td>
					<td>Neptūnas</td>
					<td>11.4</td>
					<td>Taip</td>
				</tr>
			</table>
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