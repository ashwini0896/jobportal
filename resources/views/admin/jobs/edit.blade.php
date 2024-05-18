@extends('layouts.master')
@section('title', 'Add Job')
@section('parentPageTitle', 'Job')
@section('page-style')
<link rel="stylesheet" href="{{asset('assets/plugins/bootstrap-select/css/bootstrap-select.css')}}"/>
@stop

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="body">
                <form id="updateJobForm" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="form-group form-float">
                        <input type="text" class="form-control" placeholder="Job Title" name="title" value="{{$job->title}}" required>
                    </div>
                    <div class="form-group form-float">
                        <textarea class="form-control" placeholder="Job Description" name="description" required>{{$job->description}}</textarea>
                    </div>
                    <div class="form-group form-float">
                        <input type="text" class="form-control" placeholder="Company Name" name="company_name" value="{{$job->company_name}}" required>
                    </div>
                    <div class="form-group form-float">
                        <input type="text" class="form-control" placeholder="Location" name="location" value="{{$job->location}}" required>
                    </div>
                    <div class="form-group form-float">
                        <select class="form-control show-tick" id="job_type" name="job_type" required>
                            <option value="">Select Job Type</option>
                            <option value="full-time" {{$job->job_type == "full-time" ? "selected":""}}>Full-time</option>
                            <option value="part-time" {{$job->job_type == "part-time" ? "selected":""}}>Part-time</option>
                            <option value="contract" {{$job->job_type == "contract" ? "selected":""}}>Contract</option>
                        </select>
                    </div>
                    <button class="btn btn-raised btn-primary waves-effect" type="submit" id="jobSubmitBtn">SUBMIT</button>
                </form>
            </div>
        </div>
    </div>            
</div>
@stop

@section('page-script')
<script>
    $(document).ready(function() {
        $('#jobSubmitBtn').click(function(e) {
            e.preventDefault();
            var formdata = new FormData($('#updateJobForm')[0]);

            $.ajax({
                type: "POST",
                url: "{{ route('jobs.update',$job->id) }}",
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                data: formdata,
                contentType: false,
                processData: false,  
                success: function(response) {
                    if (response.errors) {
                        var errorMsg = '';
                        $.each(response.errors, function(field, errors) {
                            $.each(errors, function(index, error) {
                                errorMsg += error + '<br>';
                            });
                        });
                        toastr.error(errorMsg, 'Error');
                    } else {
                        toastr.success(response.message, 'Success');
                        window.location.href = "{{ route('jobs.index') }}";
                    }
                },
                error: function(xhr, status, error) {
                    toastr.error('An error occurred: ' + error, 'Error');
                }
            });
        });

    });
</script>
@stop