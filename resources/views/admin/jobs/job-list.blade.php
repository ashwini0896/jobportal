@foreach($jobs as $job)
<tr id="job_row_{{ $job->id }}">
    <td>{{ $job->id }}</td>
    <td>{{ Str::limit($job->title, 15) }}</td>
    <td>{{ Str::limit($job->description, 10) }}</td>
    <td><a href="javascript:void(0);">{{$job->company_name}}</a></td>
    <td>{{ $job->location }}</td>
    <td>{{ $job->job_type }}</td>
    <td>
        @if($job->status == "active")
            <span class="badge badge-success">{{ $job->status }}</span>
        @else
            <span class="badge badge-danger">{{ $job->status }}</span>
        @endif
    </td>
    @if(Auth::user()->role == "admin")
    <td>
        <a href="{{route('jobs.edit',$job->id)}}" class="btn btn-primary btn-sm"><i class="zmdi zmdi-edit"></i></a>
        <a class="btn btn-danger btn-sm deleteJob" data-id="{{ $job->id }}"><i class="zmdi zmdi-delete"></i></a>
    </td>
    @else
    <td>
        @if($job->applicants()->where('user_id', Auth::id())->exists())
            <button type="button" class="btn btn-secondary btn-sm" disabled>Applied</button>
        @else
            <button type="button" class="btn btn-primary btn-sm applyBtn" data-id="{{ $job->id }}" data-toggle="modal" data-target="#applyModal">Apply</button>
        @endif
    </td>
    @endif
</tr>
@endforeach

<!-- Apply Modal -->
<div class="modal fade" id="applyModal" tabindex="-1" role="dialog" aria-labelledby="applyModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="applyForm" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="applyModalLabel">Apply for Job</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="job_id" id="job_id">
                    <div class="form-group">
                        <label for="resume">Resume</label>
                        <input type="file" class="form-control" name="resume" id="resume" required>
                    </div>
                    <div class="form-group">
                        <label for="cover_letter">Cover Letter</label>
                        <textarea class="form-control" name="cover_letter" id="cover_letter" rows="4" required></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Submit Application</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        // delete job
        $('body').on('click', '.deleteJob', function(e) {
            e.preventDefault();
            var jobId = $(this).data('id');
            if (confirm('Are you sure you want to delete this job?')) {
                $.ajax({
                    type: "POST",
                    url: "{{ route('jobs.destroy', ['job' => ':jobId']) }}".replace(':jobId', jobId),
                    data: {
                        "_token": "{{ csrf_token() }}",
                        "_method": "DELETE"
                    },
                    success: function(response) {
                        $('#job_row_' + jobId).remove();
                        toastr.success(response.message, 'Success');
                    },
                    error: function(xhr, status, error) {
                        toastr.error('Failed to delete job.', 'Error');
                    }
                });
            }
        });

        //apply to job
        $('body').on('click', '.applyBtn', function() {
            var jobId = $(this).data('id');
            $('#job_id').val(jobId);
        });

        $('#applyForm').submit(function(e) {
            e.preventDefault();

            var formData = new FormData(this);

            $.ajax({
                type: 'POST',
                url: "{{ route('jobs.apply', ':jobId') }}".replace(':jobId', $('#job_id').val()),
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    $('#applyModal').modal('hide');
                    toastr.success(response.message, 'Success');
                    $('#job_row_' + jobId + ' .applyBtn').replaceWith('<button type="button" class="btn btn-secondary btn-sm" disabled>Applied</button>');
                },
                error: function(xhr) {
                    toastr.error('Failed to submit application.', 'Error');
                }
            });
        });
    });
</script>
