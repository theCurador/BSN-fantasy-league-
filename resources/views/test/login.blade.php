@extends('test.template')

@section('content')
<div class="container">
	<div class="panel panel-default col-lg-7">
		<div class="panel-body ">
			@if(session()->has('error'))
			@include('partials/error', ['type' => 'danger', 'message' => session('error')])
			@endif	

			<h4>{{ trans('front/login.connection') }}</h4>					

			{!! Form::open(['url' => 'auth/login', 'method' => 'post', 'role' => 'form']) !!}	

			<div class="row">

				{!! Form::control('text', 6, 'log', $errors, trans('front/login.log')) !!}
				{!! Form::control('password', 6, 'password', $errors, trans('front/login.password')) !!}
				{!! Form::submit(trans('front/form.send'), ['col-lg-12']) !!}
				{!! Form::check('memory', trans('front/login.remind')) !!}						  
				<div class="col-lg-12">					
					{!! link_to('password/email', trans('front/login.forget')) !!}
				</div>
				<div class="col-lg-12">
					{!! link_to('auth/register', trans('front/login.registering')) !!}
				</div>

			</div>

			{!! Form::close() !!}
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