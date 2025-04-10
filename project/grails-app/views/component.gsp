%{--
====================================================================================================================================================
--}%
%{--LOGIN SECTION--}%
<div class="bd ar">
    <div class="bg-secondary p-2 bd">
        <div class="fw-bold">Login</div>
    </div>

    <div class="container m-1">
        <form class="mt-2">
            <div class="container fw-bold fs-5">
                <div class="row">
                    <div class="col-6">Email/UserName<span>*</span></div>

                    <input class="col-5"/>
                </div>
            </div>

            <div class="container fw-bold fs-5 mt-2">
                <div class="row">
                    <div class="col-6">Password<span>*</span></div>

                    <input class="col-5"/>
                </div>

            </div>

            <div class="container mt-2">
                <div class="row">
                    <a class="col-8" href="#">forget Password</a>
                    <button type="submit" class="btn btn-primary col-3 bd">Login</button>
                    <br>
                </div>
            </div>
        </form>

    </div>
</div>


%{--
==============================================================================================================================================--}%
%{--REGISTRATION SECTION--}%
<div class="bd fst-italic mt-5 fs-5 ar">
    <div class="bg-secondary p-2">
        <div class="fw-bold">Register</div>
    </div>

    <div class="border border-dark"></div>

    <div class="container m-2">
        <div class="row m-2">
            <div for="firstName" class="col-6">First Name <span>*</span></div>
            <input name="firstName" class="col-5"/>
        </div>

        <div class="row m-2">
            <div for="lastName" class="col-6">Last Name  <span>*</span></div>
            <input name="lastName" class="col-5"/>
        </div>

        <div class="row m-2">
            <div for="email" class="col-6">Email <span>*</span></div>

            <input name="email" class="col-5"/>
        </div>

        <div class="row m-2">
            <div for="userName" class="col-6">User Name <span>*</span></div>

            <input name="userName" class="col-5"/>
        </div>

        <div class="row m-2">
            <div for="password" class="col-6">Password <span>*</span></div>

            <input name="password" class="col-5"/>
        </div>

        <div class="row m-2">
            <div for="confirmPassword" class="col-6">Confirm Password <span>*</span></div>

            <input name="confirmPassword" class="col-5"/>
        </div>

        <div class="row m-2">
            <div for="photo" class="col-6">Photo <span>*</span></div>

            <input name="photo" type="file" class="col-3"/>
            <button class="col-2 btn btn-sm bg-primary m-2">Upload <span>*</span</button>
        </div>

        <div class="container d-flex justify-content-center align-items-center ">
            <button class="btn bg-primary">Register</button>
        </div>
    </div>

</div>



%{--
==============================================================================================================================================
--}%
%{--
USER TOPIC DISPLAY IN CARD --}%
<div class="row g-0 mb-3">
    <div class="col-md-4 container mt-1">
        <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>
    </div>

    <div class="col-md-8">
        <div class="m-1 ">
            <div class="d-flex justify-content-between">
                <div class="d-flex gap-2 align-items-center">
                    <div class="fs-4">User Name</div>

                    <div>@user5min</div>
                </div>

                <div><a href="#">Grails</a></div>
            </div>

            <p>This is a wider post with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

            <div class="d-flex justify-content-between">
                <div class="d-flex gap-1">
                    <div class="icon ms-1">
                        <a href="#"><asset:image src="/icons/facbook.png" width="30" height="30"
                                                 alt="facbook"/></a>
                    </div>

                    <div class="icon ms-2 ">
                        <a href="#"><asset:image src="/icons/twitter.png" width="30" height="30"
                                                 alt="twitter"/></a>
                    </div>

                    <div class="icon ms-3">
                        <a href="#"><asset:image src="/icons/google.png" width="30" height="30"
                                                 alt="google"/>
                        </a>
                    </div>
                </div>

                <div class="viewPost"><a href="#">View Post</a></div>
            </div>
        </div>
    </div>
</div>



%{--========================================================================================================================================--}%
%{--HEADING NAVBAR WITH SEARCH ICON--}%
<div class="bd row border-2 rounded-3 mt-3">
    <!-- Column 1: Link Sharing -->
    <div class="col-12 col-md-4">
        <div class="fw-bold mt-2">
            <a href="#">Link Sharing</a>
        </div>
    </div>

    <!-- Column 2: Empty Column -->
    <div class="col-12 col-md-5">
        <!-- Empty column for layout purposes -->
    </div>

    <!-- Column 3: Search Input -->
    <div class="col-12 col-md-2 d-flex align-items-center">
        <div class="w-100">
            <input class="mt-1 rounded-4 border-3 w-100" name="searchText" placeholder="Search">
        </div>
    </div>

    <!-- Column 4: Enter Button -->
    <div class="col-12 col-md-1">
        <button class="m-2 rounded-3 bg-primary">
            Enter
        </button>
    </div>
</div>


%{--=======================================================================================================================--}%
%{--
heading with two img --}%
<div class="container mt-4 p-2 bd">
    <div class="row align-items-center g-2">
        <!-- Left: Title -->
        <div class="col-12 col-md-4 d-flex align-items-center">
            <a href="#" class="fw-bold fs-5">Link Sharing</a>
        </div>

        <!-- Middle: Search -->
        <div class="col-12 col-md-4 d-flex">
            <input class="form-control me-2" type="text" placeholder="Search"/>
            <button class="btn btn-primary" type="button">Enter</button>
        </div>

        <!-- Right: Icons + Dropdown (tight & aligned) -->
        <div class="col-12 col-md-4 d-flex align-items-center justify-content-end gap-5">
            <a href="#">
                <img src="${resource(dir: 'icons', file: 'link.jpeg')}" width="30" height="30" alt="Link"/>
            </a>
            <img src="${resource(dir: 'icons', file: 'user.jpeg')}" width="30" height="30" alt="User"/>

            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle btn-sm" type="button" id="dropdownMenuButton"
                        data-bs-toggle="dropdown" aria-expanded="false">
                    User
                </button>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton">
                    <li><a class="dropdown-item" href="#">Profile</a></li>
                    <li><a class="dropdown-item" href="#">Users</a></li>
                    <li><a class="dropdown-item" href="#">Topic</a></li>
                    <li><a class="dropdown-item" href="#">Post</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
