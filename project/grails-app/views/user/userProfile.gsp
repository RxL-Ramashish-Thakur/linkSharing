<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    .bd {
        border: solid 3px;
        border-radius: 9px;
    }

    input {
        border-radius: 5px;
    }

    a {
        color: cornflowerblue;
    }

    .searchIcon {
        background-image: url('${resource(dir: 'icons', file: 'search.png')}');
        background-position: 10px center;
        background-repeat: no-repeat;
        background-size: 20px 20px;
        padding-left: 40px;
    }

    .ar {
        border-radius: 7px;
    }

    .lineBreak {
        border: solid 3px;
    }
    </style>
</head>

<body>
<div class="main container">


    <div class="container my-4">
        <h1 class="text-center fw-bold">User Profile</h1>
    </div>
  %{--  NAVBAR / HEADING / USERHEADING --}%
    <g:render template="/common/userNavbar"/>
    <br>

    <div class="body">
        <div class="row">
            <!-- Left Panel -->
            <div class="col-lg-5 col-md-12">

                <!-- Profile Card -->
                <div class="container bd mb-4">
                    <div class="card border-0" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-3">
                                <img src="${resource(dir: 'icons', file: 'user2.jpg')}" height="100px">
                            </div>

                            <div class="col-md-9">
                                <div class="card-body">
                                    <div class="h3">Uday Pratap Singh</div>

                                    <div class="d-flex gap-5 mt-1">
                                        <div>@Uday</div>

                                        <div>Post</div>

                                        <div>Subscribe</div>
                                    </div>

                                    <div class="d-flex gap-5">
                                        <div><a href="#">Subscribe</a></div>

                                        <div><a href="#">30</a></div>

                                        <div><a href="#">50</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Topics Section -->
                <div class="bd mb-4">
                    <div class="bg-secondary p-2 fs-4 fw-bold">Topic</div>

                    <div class="border border-dark"></div>

                    <div class="col-md-8 ms-4">
                        <div class="m-1 text-secondary">
                            <a href="#">Grails</a>

                            <p>@uday</p>

                            <div class="d-flex gap-5">
                                <div>
                                    <div>Subscriptions</div>
                                    <a href="#">30</a>
                                </div>

                                <div>
                                    <div>topics</div>
                                    <a href="#">50</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- Subscriptions Section -->
                <div class="row g-0 mb-3 bd">
                    <div class="d-flex justify-content-between gap-5 fs-4 p-1 bg-secondary">
                        <div class="fw-bold">Subscriptions</div>

                        <div><a href="#">View all</a></div>
                    </div>

                    <div class="border border-dark"></div>

                    <div class="row g-0 m-2">
                        <div class="col-md-8">
                            <div class="m-1 text-secondary">
                                <div><a href="#">Grails</a></div>

                                <p>@uday</p>

                                <div class="d-flex gap-5">
                                    <div>
                                        <div>Subscriptions</div>
                                        <a href="#">30</a>
                                    </div>

                                    <div>
                                        <div>topics</div>
                                        <a href="#">50</a>
                                    </div>

                                    <div>
                                        <div>Posts</div>
                                        <a href="#">50</a>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-centre align-item-centre gap-1 mt-2">
                                    <div class="input-group mb-3 ">
                                        <select class="custom-select" id="inputGroupSelect01">
                                            <option selected>Serious</option>
                                            <option value="1">Non-Serious</option>
                                        </select>
                                    </div>

                                    <div class="input-group mb-3">
                                        <select class="custom-select" id="private">
                                            <option selected>Private</option>
                                            <option value="1">Public</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="border border-dark"></div>

                    <div class="row g-0 m-2">
                        <div class="col-md-8">
                            <div class="m-1 text-secondary">
                                <div><a href="#">Grails</a></div>

                                <p>@uday</p>

                                <div class="d-flex gap-5">
                                    <div>
                                        <div>Subscriptions</div>
                                        <a href="#">30</a>
                                    </div>

                                    <div>
                                        <div>topics</div>
                                        <a href="#">50</a>
                                    </div>

                                    <div>
                                        <div>Posts</div>
                                        <a href="#">50</a>
                                    </div>
                                </div>

                                <div class="d-flex mt-2">
                                    <div class="input-group mb-3 ">
                                        <select class="custom-select" id="inputGroupSelect01">
                                            <option selected>Serious</option>
                                            <option value="1">Non-Serious</option>
                                        </select>
                                    </div>

                                    <div class="icon mb-3">
                                        <a href="#"><img src="../icons/NOTIFICATION.jpeg" width="50px" height="40px"
                                                         alt="Message"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Right Panel -->
            <div class="col-lg-7 col-md-12 mt-4 mt-lg-0">
                <div class="bd">
                    <div class="d-flex justify-content-between p-2">
                        <div class="fs-4 fw-bold">Posts</div>
                        <input class="bd rounded-3 searchIcon" type="text" placeholder="Search">
                    </div>

                    <div class="border border-dark"></div>
                    <div class="row g-0 mb-3">
                        <div class="col-md-9 m-3">
                            <div class="m-1">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="d-flex gap-2 align-items-center">
                                        <div class="fs-4">User Name</div>

                                        <div>@user5min</div>
                                    </div>

                                    <div><a href="#">Grails</a></div>
                                </div>

                                <p>This is a wider post with supporting text below -in to additional content. This content is a little bit longer.</p>
                            </div>
                            <div class="d-flex container justify-content-between">
                                <div class="d-flex gap-4">
                                    <div class="icon ">
                                        <a href="#"><asset:image src="/icons/facbook.png" width="20" height="30"
                                                                 alt="facbook"/></a>
                                    </div>

                                    <div class="icon ">
                                        <a href="#"><asset:image src="/icons/twitter.png" width="20" height="30"
                                                                 alt="twitter"/></a>
                                    </div>

                                    <div class="icon ">
                                        <a href="#"><asset:image src="/icons/google.png" width="20" height="30"
                                                                 alt="google"/>
                                        </a>
                                    </div>
                                </div>

                                <div class="d-flex gap-3">
                                    <div><a href="#">Downloads</a></div>

                                    <div><a href="#">ViewPost</a></div>

                                    <div><a href="#">MarkAsRead</a></div>

                                    <div><a href="#">ViewSource</a></div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="border border-dark"></div>
                    <div class="row g-0 mb-3">
                        <div class="col-md-9 m-3">
                            <div class="m-1">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="d-flex gap-2 align-items-center">
                                        <div class="fs-4">User Name</div>

                                        <div>@user5min</div>
                                    </div>

                                    <div><a href="#">Grails</a></div>
                                </div>

                                <p>This is a wider post with supporting text below -in to additional content. This content is a little bit longer.</p>
                            </div>
                            <div class="d-flex container justify-content-between">
                                <div class="d-flex gap-4">
                                    <div class="icon ">
                                        <a href="#"><asset:image src="/icons/facbook.png" width="20" height="30"
                                                                 alt="facbook"/></a>
                                    </div>

                                    <div class="icon ">
                                        <a href="#"><asset:image src="/icons/twitter.png" width="20" height="30"
                                                                 alt="twitter"/></a>
                                    </div>

                                    <div class="icon ">
                                        <a href="#"><asset:image src="/icons/google.png" width="20" height="30"
                                                                 alt="google"/>
                                        </a>
                                    </div>
                                </div>

                                <div class="d-flex gap-3">
                                    <div><a href="#">Downloads</a></div>

                                    <div><a href="#">ViewPost</a></div>

                                    <div><a href="#">MarkAsRead</a></div>

                                    <div><a href="#">ViewSource</a></div>
                                </div>
                            </div>
                        </div>

                    </div>





                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
