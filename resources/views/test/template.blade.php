<!DOCTYPE html>
<html>
<head>
	<title>Fantasy Basketball League</title>

	<meta charset="UTF-8">

	<!-- Latest compiled and minified CSS -->
	
	{!! HTML::style('http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css') !!}
	{!! HTML::style('css/custom.css') !!}

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<!--<script src="js/bootstrap.min.js"></script>-->
	{{HTML::script('https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js')}}
	{{HTML::script('js/bootstrap.min.js')}}

	@yield('head')

</head>
<body>

	<nav class="navbar navbar-default" >
		<div class="container-fluid" >
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				
				<a class="navbar-brand custom-nav-brand" href="/"><span><img class="custom-logo" src="https://upload.wikimedia.org/wikipedia/en/2/23/LKL_logo.svg.png"></span> Svajonių lyga</a>
				<button type="button" class="navbar-toggle collapsed custom-navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse custom-navbar" id="bs-example-navbar-collapse-1" >
				<ul class="nav navbar-nav" >
					<li class="active"><a href="/">Namai<span class="sr-only">(current)</span></a></li>
					@if(session('statut') != 'visitor')					
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Mano komanda <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/team_player_list">Komandos paraiška</a></li>
							<li><a href="/game_player_list">Varžybų paraiška</a></li>
							<li><a href="/add_player_in_team">Pirkti žaidėjus</a></li>
						</ul>
					</li>
					<li><a href="#">Taškai</a></li>
					@endif
					
					
					<li><a href="#">Kaip žaisti?</a></li>
					

					
				</ul>
				
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"></a></li>
					@if(session('statut') == 'visitor')
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Prisijunkite<span class="caret"></span></a>
						<ul class="dropdown-menu">

							{!! Form::open(['url' => 'auth/login', 'method' => 'post', 
							'role' => 'form', 
							'class' => 'navbar-form navbar-left'
							]) !!}	

							<div class="row">

								{!! Form::control('text', 12 , 'log', $errors, trans('front/login.log')) !!}
								{!! Form::control('password', 12, 'password', $errors, trans('front/login.password')) !!}
								{!! Form::submit(trans('front/form.send'), ['custom-login-button col-lg-12']) !!}
								{!! Form::check('memory', trans('front/login.remind')) !!}
								<div class="col-lg-12">					
									{!! link_to('password/email', trans('front/login.forget')) !!}
									{!! link_to('auth/register', trans('front/login.registering')) !!}
								</div>

							</div>

							{!! Form::close() !!}
							
						</ul>
					</li>
					@else
					
					<li>
						{!! link_to('auth/logout', trans('front/site.logout')) !!}
					</li>
					@endif
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
	
	@yield('content')

	<div class="container">
		<div class="panel panel-default">
			<div class="panel-footer">
				<ul>
					<li><strong>Apie</strong></li>
					<li><a href="#">Apie žaidimą</a></li>
					<li><a href="#">Kaip žaisti?</a></li>
				</ul>
				<ul>
					<li><strong>Susisiekite</strong></li>						
				</ul>	
				@yield('footer')
			</div>
		</div>
	</div>
</body>
</html>