@extends('front.template')

@section('content')
<div class="container">
	<div class="panel panel-default col-lg-12">
		<div class="panel-body ">
			@if(session()->has('status'))
			@include('partials/error', ['type' => 'success', 'message' => session('status')])
			@endif
			@if(session()->has('error'))
			@include('partials/error', ['type' => 'danger', 'message' => session('error')])
			@endif	

			<h4>{{ trans('front/password.title') }}</h4>
			
			<p>{{ trans('front/password.info') }}</p>		
			{!! Form::open(['url' => 'password/email', 'method' => 'post', 'role' => 'form']) !!}	

			<div class="row">

				{!! Form::control('email', 4, 'email', $errors, trans('front/password.email')) !!}
				{!! Form::submit(trans('front/form.send'), ['col-lg-12']) !!}

			</div>

			{!! Form::close() !!}

		</div>
	</div>
</div>
@stop