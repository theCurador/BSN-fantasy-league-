@extends('back.template')

@section('head')



@stop

@section('main')

<div class="row col-lg-12">
  <div class="row col-lg-12">
    <h3>Įkelti varžybų taškus</h3>   
    
    {!!Form::open(['url' => 'calcscores', 'method' => 'post', 'role' => 'form', 'class' => 'navbar-form navbar-left', 'files' => true]) !!}
    @if ($error != '')
    <small class="help-block">{{ $error }}</small>
    @endif
    {!!Form::text('match_id', null, ['class' => 'form-control custom-input-create-team', 'placeholder' => 'Varžybų ID'])!!}
    {!! Form::file('csv') !!}
    {!!Form::submit('Įkelti varžybų taškus')!!}
    {!!Form::close()!!} 
   
  </div>


  <div class="row col-lg-12">
    <h3>Skaičiuoti komandų taškus</h3>
    {!!Form::open(['url' => 'calcteamscores', 'method' => 'post', 'role' => 'form', 'class' => 'navbar-form navbar-left']) !!}
    {!!Form::submit('Skaičiuoti komandų taškus')!!}
    {!!Form::close()!!} 

  </div>

</div>



@stop



