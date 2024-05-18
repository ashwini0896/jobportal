@extends('layouts.master')
@section('title', 'User Applications')
@section('parentPageTitle', 'Job')

@section('content')
<div class="row clearfix">
    <div class="col-lg-12">
        <div class="card">
            <div class="header">
                <h2>User Applications</h2>
            </div>
            <div class="body">
                <div class="table-responsive contact">
                    <table class="table table-hover mb-0 c_list c_table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Job Title</th>
                                <th>Applicant Name</th>
                                <th>Email</th>
                                <th>Resume</th>
                                <th>Cover Letter</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($applications as $application)
                            <tr id="application_row_{{ $application->id }}">
                                <td>{{ $application->id }}</td>
                                <td>{{ $application->job->title }}</td>
                                <td>{{ $application->user->name }}</td>
                                <td>{{ $application->user->email }}</td>
                                <td>
                                    <a href="{{ route('applications.download', $application->id) }}">Download Resume</a>
                                </td>
                                <td>{{ Str::limit($application->cover_letter, 50) }}</td>
                                <td>
                                    <button class="btn btn-danger btn-sm deleteApplication" data-id="{{ $application->id }}">Delete</button>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <!-- Pagination Links -->
                <div class="d-flex justify-content-center">
                    {{ $applications->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@stop

@section('page-script')
<script>
    $(document).ready(function() {
        $('.deleteApplication').click(function(e) {
            e.preventDefault();
            var applicationId = $(this).data('id');
            if (confirm('Are you sure you want to delete this application?')) {
                $.ajax({
                    type: "POST",
                    url: "{{ route('applications.destroy', ':id') }}".replace(':id', applicationId),
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: {
                        "_method": "DELETE"
                    },
                    success: function(response) {
                        if (response.success) {
                            $('#application_row_' + applicationId).remove();
                            toastr.success(response.message, 'Success');
                        } else {
                            toastr.error(response.message, 'Error');
                        }
                    },
                    error: function(xhr, status, error) {
                        toastr.error('An error occurred: ' + error, 'Error');
                    }
                });
            }
        });
    });
</script>
@stop
