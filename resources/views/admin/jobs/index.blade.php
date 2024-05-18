@extends('layouts.master')
@section('title', 'Job List')
@section('parentPageTitle', 'Job')

@section('page-style')
<link rel="stylesheet" href="{{asset('assets/plugins/bootstrap-select/css/bootstrap-select.css')}}"/>
@stop

@section('content')
<div class="row clearfix">
    <div class="col-lg-12">
        <div class="card">  
            <div class="card-body">
                @if(Auth::user()->role == "admin")
                <a class="btn btn-success float-right" href="{{route('jobs.create')}}">Add Job</a>
                @endif
                <div class="row mb-3">
                    <div class="col-md-4">
                        <input type="text" class="form-control" id="searchInput" placeholder="Search by keyword...">
                    </div>
                    <div class="col-md-4">
                        <input type="text" class="form-control" id="locationInput" placeholder="Search by location...">
                    </div>
                    <div class="col-md-3">
                        <select class="form-control" id="jobTypeInput">
                            <option value="">Select Job Type</option>
                            <option value="full-time">Full-time</option>
                            <option value="part-time">Part-time</option>
                            <option value="contract">Contract</option>
                        </select>
                    </div>
                    <div class="col-md-1">
                        <button class="btn btn-primary" id="searchBtn"><i class="zmdi zmdi-search"></i></button>
                    </div>
                </div>
                <div class="table-responsive contact">
                    <table class="table table-hover mb-0 c_list c_table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Job Title</th>
                                <th>Description</th>
                                <th>Company Name</th>
                                <th>Location</th>
                                <th>Job Type</th>
                                <th>Status</th>
                                <th data-breakpoints="xs">Action</th>
                            </tr>
                        </thead>
                        <tbody id="jobList">
                            @include('admin.jobs.job-list', ['jobs' => $jobs])
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="body">
                <ul class="pagination pagination-primary m-b-0">
                    @if ($jobs->onFirstPage())
                        <li class="page-item disabled"><a class="page-link" href="javascript:void(0);"><i class="zmdi zmdi-arrow-left"></i></a></li>
                    @else
                        <li class="page-item"><a class="page-link" href="{{ $jobs->previousPageUrl() }}"><i class="zmdi zmdi-arrow-left"></i></a></li>
                    @endif

                    @foreach ($jobs->getUrlRange(1, $jobs->lastPage()) as $page => $url)
                        <li class="page-item {{ $jobs->currentPage() == $page ? 'active' : '' }}">
                            <a class="page-link" href="{{ $url }}">{{ $page }}</a>
                        </li>
                    @endforeach

                    @if ($jobs->hasMorePages())
                        <li class="page-item"><a class="page-link" href="{{ $jobs->nextPageUrl() }}"><i class="zmdi zmdi-arrow-right"></i></a></li>
                    @else
                        <li class="page-item disabled"><a class="page-link" href="javascript:void(0);"><i class="zmdi zmdi-arrow-right"></i></a></li>
                    @endif
                </ul>
            </div>
        </div>
    </div>
</div>
@stop

@section('page-script')
<script type="text/javascript">
    $(document).ready(function() {
        //search job
        $('#searchBtn').on('click', function() {
            var keyword = $('#searchInput').val();
            var location = $('#locationInput').val();
            var jobType = $('#jobTypeInput').val();

            $.ajax({
                type: 'GET',
                url: '{{ route('jobs.index') }}',
                data: {
                    keyword: keyword,
                    location: location,
                    job_type: jobType
                },
                success: function(response) {
                    $('#jobList').html(response);
                },
                error: function(xhr, status, error) {
                    console.error('Error:', error);
                }
            });
        });
    });
</script>
@stop
