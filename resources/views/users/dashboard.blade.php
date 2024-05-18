@extends('layouts.master')
@section('title', 'User Dashboard')
@section('parentPageTitle', 'User')

@section('content')
<div class="row clearfix">
    <h2>Welcome, {{ Auth::user()->name }}</h2>
</div>            
@stop
@section('page-script')
<script src="{{asset('assets/bundles/jvectormap.bundle.js')}}"></script>
<script src="{{asset('assets/plugins/jvectormap/jquery-jvectormap-us-aea-en.js')}}"></script>
<script src="{{asset('assets/bundles/sparkline.bundle.js')}}"></script>
<script src="{{asset('assets/bundles/c3.bundle.js')}}"></script>
<script src="{{asset('assets/js/pages/blog/blog.js')}}"></script>
@stop