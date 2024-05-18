<!-- Left Sidebar -->
<aside id="leftsidebar" class="sidebar">
    <div class="navbar-brand">
        <button class="btn-menu ls-toggle-btn" type="button"><i class="zmdi zmdi-menu"></i></button>
        {{--@if(Auth::user()->role == 'admin') 
        <a href="{{route('admin.dashboard')}}"><img src="../assets/images/logo.svg" width="25" alt="Aero"><span class="m-l-10">Stratocope</span></a>
        @endif--}}
    </div>
    <div class="menu">
        <ul class="list">
            <li>
                <div class="user-info">
                    <div class="image"><a href="#"><img src="{{asset('assets/images/profile_av.jpg')}}" alt="User"></a></div>
                    <div class="detail">
                        <h4>{{Auth::user()->name}}</h4>
                        <small>{{Auth::user()->role}}</small>
                    </div>
                </div>
            </li> 
            @if(Auth::user()->role == 'admin')        
            <li class="{{ Request::segment(2) === 'dashboard' ? 'active open' : null }}"><a href="{{route('admin.dashboard')}}"><i class="zmdi zmdi-home"></i><span>Dashboard</span></a></li>
            <li class="{{ Request::segment(2) === 'job-applications' ? 'active open' : null }}"><a href="{{route('applications.index')}}"><i class="zmdi zmdi-home"></i><span>Job Applications</span></a></li>
            @endif
            <li class="{{ Request::segment(2) === 'jobs' ? 'active' : null }}"><a href="{{route('jobs.index')}}"><i class="zmdi zmdi-account"></i><span>Job List</span></a></li>
        </ul>
    </div>
</aside>
