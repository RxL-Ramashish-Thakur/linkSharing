<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
    .bd {
        border: solid 3px;
        border-radius: 5px;
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

<body style="background-color: #bcc8d3">
<div class="container">
    <g:if test="${flash.message}">
        <div class="alert alert-info alert-dismissible fade show mt-3 bg-danger" role="alert">
            ${flash.message}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </g:if>

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

                <div class="border border-dark"></div>

                <!-- User Session Cards -->
                <div class="container m-auto p-1">
                    <!-- First Card (No Border) -->
                    <div class="row g-0 mb-3">
                        <div class="col-md-4 container">
                            <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>

                        </div>

                        <div class="col-md-8">
                            <div class="p-2">
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
                                                                     alt="google"/></a>
                                        </div>
                                    </div>

                                    <div class="viewPost"><a href="#">View Post</a></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="border border-dark"></div>

                    <!-- Second Card (No Border) -->
                    <div class="row g-0 mb-3">
                        <div class="col-md-4 container mt-2">
                            <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>

                        </div>

                        <div class="col-md-8">
                            <div class="p-2">
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
                                                                     alt="google"/></a>
                                        </div>
                                    </div>

                                    <div class="viewPost"><a href="#">View Post</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="topPost">
                <div class="bd mt-5 ar">
                    <div class="d-flex justify-content-between fw-bold bg-secondary bd p-1"">
                    <div>Top Posts</div>

                    <div class="">Date</div>
                </div>

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
            </div>

        </div>
    </div>

    <!-- Column 2: (Can be removed or filled with content) -->
    <div class="col-12 col-md-6 g-3 ">
        %{--REgistration--}%
        <g:render template="/common/registration"/>
        <br>
        %{--LOGIN SESSTION--}%
        <div class="bd">
            <g:render template="/common/login"/>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>