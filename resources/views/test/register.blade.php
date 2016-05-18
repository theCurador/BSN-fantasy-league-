@extends('test.template')

@section('content')
<div class="container">
	<div class="panel panel-default col-lg-7">
		<div class="panel-body ">

			<h4>{{ trans('front/register.title') }}</h4>


			{!! Form::open(['url' => 'auth/register', 'method' => 'post', 'role' => 'form']) !!}	

			<div class="row">
				{!! Form::control('text', 6, 'username', $errors, trans('front/register.pseudo')) !!}
				{!! Form::control('email', 6, 'email', $errors, trans('front/register.email')) !!}
			</div>
			<div class="row">	
				{!! Form::control('password', 6, 'password', $errors, trans('front/register.password')) !!}
				{!! Form::control('password', 6, 'password_confirmation', $errors, trans('front/register.confirm-password')) !!}
			</div>
			
			<div class="row">	
				{!! Form::submit(trans('front/form.send'), ['col-lg-12']) !!}
			</div>

			{!! Form::close() !!}
		</div>
		
	</div>
	@include('test.sidebarr.team_result')
</div>
@stop