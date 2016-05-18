@extends('back.template')

@section('head')



@stop

@section('main')
  
  <div class="row col-lg-12">
    {!!Form::open(['url' => 'calcscores', 'method' => 'post', 'role' => 'form', 'class' => 'navbar-form navbar-left']) !!}
      @if ($error != '')
      <small class="help-block">{{ $error }}</small>
      @endif
      {!!Form::submit('Skaičiuoti taškus')!!}
    {!!Form::close()!!}    
  </div>

  

@stop



