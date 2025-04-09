<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Link Sharing1</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .bd {
            border: solid 3px;
        }

        input {
            border-radius: 5px;
        }

        a {
            text-decoration: none;
            color: cornflowerblue;
        }

        .ar {
            border-radius: 7px;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- row1  heading and searching bar -->
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

    <!-- row2 -->
    <div class="row mt-5">
        <!-- Column 1: Recent Search -->
        <div class="col-12 col-md-6 g-3">
            <!-- Recent Search Title -->
            <div class="bd ar">
                <div class=" bg-secondary p-2">
                    <div class="fw-bold">Recent Search</div>
                </div>
                <div class="border-dark"></div>
                <!-- User Session Cards -->
    <div class="container m-auto p-1">
        <!-- First Card (No Border) -->
        <div class="row g-0 mb-3">
            <div class="col-md-4">
                <img src="user.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="p-2">
                    <h5 class="fw-bold">User Name @user5min</h5>
                    <p>This is a wider post with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <div class="row">
                        <div class="col-6"><span>icon1 </span><span>icon1 </span></div>
                        <div class="col-1"></div>
                        <div class="col-5"><a href="#">View Post</a></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Second Card (No Border) -->
        <div class="row g-0 mb-3">
            <div class="col-md-4">
                <img src="user.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="p-2">
                    <h5 class="fw-bold">User Name @user5min</h5>
                    <p>This is a wider post with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <div class="row">
                        <div class="col-6"><span>icon1 </span><span>icon1 </span></div>
                        <div class="col-1"></div>
                        <div class="col-5"><a href="#">View Post</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

            <!--Top post-->
            <div class="bd mt-5 ar">
                <div class="container fw-bold bg-secondary bd p-1">Top Posts</div>
                <!-- Too post-->
                <div class="container p-1 ar">
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row g-5">
                            <div class="col-md-4">
                                <img src="user.jpg" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">User Name @user5min</h5>
                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                    <div class="row">
                                        <div class="col-6"><span>icon1 </span><span>icon1 </span></div>
                                        <div class="col-1"></div>
                                        <div class="col-4"><a href="#">View Post</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!-- Column 2: (Can be removed or filled with content) -->
        <div class="col-12 col-md-6 g-3">

            <!--login section-->
            <div class="bd ar">
                <div class="bg-secondary p-2 bd">
                    <div class="fw-bold">Login</div>
                </div>
                <div class="container m-1">
                    <form class="mt-2">
                        <div class="container fw-bold fs-5">
                            <div class="row">
                                <div class="col-6">Email/UserName</div>

                                <input class="col-5" />
                            </div>
                        </div>
                        <div class="container fw-bold fs-5 mt-2">
                            <div class="row">
                                <div class="col-6">Password</div>

                                <input class="col-5" />
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

            <!--registration section-->
            <div class="bd fst-italic mt-5 fs-4 fw-bold ar">
                <div class="bg-secondary p-2">
                    <div class="fw-bold">Register</div>
                </div>
                <div class="container m-2">
                    <div class="row m-2">
                        <div for="firstName" class="col-6">First Name</div>

                        <input name="firstName" class="col-5" />
                    </div>
                    <div class="row m-2">
                        <div for="lastName" class="col-6">Last Name</div>
                        <input name="lastName" class="col-5" />
                    </div>
                    <div class="row m-2">
                        <div for="email" class="col-6">Email</div>

                        <input name="email" class="col-5" />
                    </div>
                    <div class="row m-2">
                        <div for="userName" class="col-6">User Name</div>

                        <input name="userName" class="col-5" />
                    </div>
                    <div class="row m-2">
                        <div for="password" class="col-6">Password</div>

                        <input name="password" class="col-5" />
                    </div>

                    <div class="row m-2">
                        <div for="confirmPassword" class="col-6">Confirm Password</div>

                        <input name="confirmPassword" class="col-5" />
                    </div>

                    <div class="row m-2">
                        <div for="photo" class="col-6">Photo</div>

                        <input name="photo" type="file" class="col-3" />
                        <button class="col-2 btn btn-sm bg-primary m-2">Upload</button>
                    </div>
                    <div class="container d-flex justify-content-center align-items-center ">
                        <button class="btn bg-primary"> Register</button>
                    </div>

                </div>
                <!-- Too post-->
            </div>

        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>