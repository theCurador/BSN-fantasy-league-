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
	@include('test.sidebarr.team_result')
</div>
@stop