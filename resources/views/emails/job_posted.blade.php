<!-- resources/views/emails/job_posted.blade.php -->
<!DOCTYPE html>
<html>
<head>
    <title>Job Posted</title>
</head>
<body>
    <h1>Your Job Has Been Posted</h1>
    <p>Job Title: {{ $job->title }}</p>
    <p>Description: {{ $job->description }}</p>
</body>
</html>
