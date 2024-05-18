@extends('layouts.master')
@section('title', 'Dashboard')

@section('content')
<div class="row clearfix">
    <h4>Welcome, {{ Auth::user()->name }}</h4>
</div>
@stop