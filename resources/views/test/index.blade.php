@extends('test.template')


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
				<tr>
					<td>Šiauliai</td>
					<td>Lietuvos rytas</td>
					<td>2016-03-13 17:00</td>
				</tr>
				<tr>
					<td>Šiauliai</td>
					<td>Lietuvos rytas</td>
					<td>2016-03-13 17:00</td>
				</tr>
				<tr>
					<td>Šiauliai</td>
					<td>Lietuvos rytas</td>
					<td>2016-03-13 17:00</td>
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