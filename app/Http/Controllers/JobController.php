<?php

namespace App\Http\Controllers;

use App\Mail\JobPosted;
use App\Models\Job;
use Exception;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = Job::query();

        if ($request->filled('keyword')) {
            $query->where('title', 'like', '%' . $request->keyword . '%')
                ->orWhere('description', 'like', '%' . $request->keyword . '%')
                ->orWhere('company_name', 'like', '%' . $request->keyword . '%');
        }

        if ($request->filled('location')) {
            $query->where('location', 'like', '%' . $request->location . '%');
        }

        if ($request->filled('job_type')) {
            $query->where('job_type', $request->job_type);
        }

        $query->orderBy('id', 'desc');
        $jobs = $query->paginate(10);

        if ($request->ajax()) {
            return view('admin.jobs.job-list', compact('jobs'))->render();
        }

        return view('admin.jobs.index', compact('jobs'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.jobs.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'description' => 'required',
            'company_name' => 'required',
            'location' => 'required',
            'job_type' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()]);
        }

        $job = new Job();
        $job->user_id = Auth::user()->id;
        $job->title = $request->title;
        $job->description = $request->description;
        $job->company_name = $request->company_name;
        $job->location = $request->location;
        $job->job_type = $request->job_type;
        $job->status = "active";
        $job->save();

        Mail::to(auth()->user()->email)->send(new JobPosted($job));

        if($job){
            return response()->json(['success'=> true,'message' => 'Job created successfully']);
        }else{
            return response()->json(['success'=> false,'message'=> 'Something went wrong']);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $job = Job::findOrFail($id);
        return view('admin.jobs.edit', compact('job'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'description' => 'required',
            'company_name' => 'required',
            'location' => 'required',
            'job_type' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()]);
        }

        $job = Job::findOrFail($id);
        $job->title = $request->title;
        $job->description = $request->description;
        $job->company_name = $request->company_name;
        $job->location = $request->location;
        $job->job_type = $request->job_type;
        $job->save();

        if($job){
            return response()->json(['success'=> true,'message' => 'Job updated successfully']);
        }else{
            return response()->json(['success'=> false,'message'=> 'Something went wrong']);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $job = Job::findOrFail($id);
            if ($job->delete()) {
                return response()->json(['success' => true, 'message' => 'Job deleted successfully']);
            } else {
                return response()->json(['success' => false, 'message' => 'Failed to delete the job'], 500);
            }
        } catch (ModelNotFoundException $e) {
            return response()->json(['success' => false, 'message' => 'Job not found'], 404);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'An error occurred while deleting the job'], 500);
        }
    }

}
