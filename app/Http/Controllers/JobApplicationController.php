<?php

namespace App\Http\Controllers;

use App\Mail\JobApplied;
use App\Models\Job;
use App\Models\JobApplication;
use Exception;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;

class JobApplicationController extends Controller
{
    public function index()
    {
        $applications = JobApplication::with('user','job')->paginate(10);
        return view('admin.applications.index', compact('applications'));
    }

    public function apply(Request $request, Job $job)
    {
        $request->validate([
            'cover_letter' => 'required',
            'resume' => 'required|mimes:pdf,doc,docx',
        ]);

        $application = new JobApplication();
        $application->user_id = Auth::id();
        $application->job_id = $job->id;
        $application->cover_letter = $request->cover_letter;
        
        if ($request->hasFile('resume')) {
            $file = $request->file('resume');
            $resumeName = time() . '_' . $file->getClientOriginalName();
            $file->storeAs('public/resumes', $resumeName);
            $application->resume = $resumeName;
        }
        
        $application->save();

        Mail::to($job->user->email)->send(new JobApplied($job, auth()->user()));

        return response()->json(['success'=> true,'message' => 'You have successfully applied for the job.']);
    }

    public function destroy(string $id)
    {
        try {
            $application  = JobApplication::findOrFail($id);
            if ($application ->delete()) {
                return response()->json(['success' => true, 'message' => 'Application deleted successfully']);
            } else {
                return response()->json(['success' => false, 'message' => 'Failed to delete the application'], 500);
            }
        } catch (ModelNotFoundException $e) {
            return response()->json(['success' => false, 'message' => 'Application not found'], 404);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'An error occurred while deleting the application'], 500);
        }
    }

    public function downloadResume($id)
    {
        $application = JobApplication::findOrFail($id);
        $file = storage_path('app/public/resumes/' . $application->resume);

        if (!Storage::exists($file)) {
            abort(404, 'The file does not exist.');
        }

        return response()->download($file);
    }
}
