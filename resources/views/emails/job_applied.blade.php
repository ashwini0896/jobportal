<!-- resources/views/emails/job_applied.blade.php -->
<!DOCTYPE html>
<html>
<head>
    <title>Job Applied</title>
</head>
<body>
    <h1>{{ $user->name }} Applied to Your Job Listing</h1>
    <p>Job Title: {{ $job->title }}</p>
</body>
</html>
