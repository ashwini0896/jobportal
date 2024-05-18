<div class="navbar-right">
    <ul class="navbar-nav">
        <li>
            <a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="mega-menu" title="Sign Out">
                <form id="logout-form" action="{{ route('logout') }}" method="POST">
                    @csrf
                    <i class="zmdi zmdi-power"></i>
                </form>
            </a>
        </li>
    </ul>
</div>