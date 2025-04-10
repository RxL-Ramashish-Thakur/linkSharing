<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Top Show</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    .bd {
        border: solid 3px;
        border-radius: 12px;
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
<div class="container ">
    <div class="container-fluid main">

        <div class="container mt-2 topShow">
            <h1>Top Show</h1>
        </div>

        <!-- Heading -->
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
        <br>


        <!-- Body -->
        <div class="row bodyRow">
            <!-- Left Column -->

            <div class="col-lg-5">

                <!-- Topic Card -->
                <div class="bd mb-3">
                    <h5 class="container m-2">Topic : "Grails"</h5>

                    <div class="border border-dark"></div>

                    <div class="row g-0">
                        <div class="col-md-4 container mt-1">
                            <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>
                        </div>

                        <div class="col-md-8">
                            <div class="m-1 text-secondary">
                                <div class="fs-5 fw-bold">Uday Patap Singh   &nbsp;&nbsp; <span
                                        class="fs-5">(Private)</span>
                                </div>

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




                <!-- User Card (Repeated Block) -->
                <div class="bd mb-3">
                    <h5 class="container m-2">User : "Grails"</h5>

                    <div class="border border-dark"></div>

                    <!-- Repeat this block for each user -->
                    <div class="m-1 container">
                        <div class="d-flex">
                            <img src="${resource(dir: 'icons', file: 'user2.jpg')}" width="120" height="100">

                            <div class="container">
                                <div class="fs-5 fw-bold">Uday Patap Singh   &nbsp;&nbsp; <span
                                        class="text-secondary">(Private)</span></div>

                                <div class="d-flex gap-3 fw-bold">
                                    <div>Subscribe</div>

                                    <div>Topics</div>
                                </div>

                                <div class="d-flex gap-5 fs-4">
                                    <a href="#">50</a>
                                    <a href="#">30</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="border border-dark my-2"></div>
                   %{-- second user--}%
                    <div class="m-1 container">
                        <div class="d-flex">
                            <img src="${resource(dir: 'icons', file: 'user2.jpg')}" width="120" height="100">

                            <div class="container">
                                <div class="fs-5 fw-bold">Uday Patap Singh   &nbsp;&nbsp; <span
                                        class="text-secondary">(Private)</span></div>

                                <div class="d-flex gap-3 fw-bold">
                                    <div>Subscribe</div>

                                    <div>Topics</div>
                                </div>

                                <div class="d-flex gap-5 fs-4">
                                    <a href="#">50</a>
                                    <a href="#">30</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Right Column -->
            <div class="col-lg-7">
                <div class="bd">
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="text-secondary fs-4 fw-bold">Posts : "Grails"</div>
                        <input class="bd rounded-3 searchIcon" type="text" placeholder="Search">
                    </div>

                    <div class="border border-dark my-2"></div>

                    <!-- Post Block -->
                    <div class="m-2">
                        <div class="d-flex">
                            <img src="${resource(dir: 'icons', file: 'user2.jpg')}" width="110" height="110">

                            <div class="container ms-2">
                                <p class="mt-2">With these changes, the title "Button" will appear...</p>

                                <div class="d-flex flex-wrap gap-3 align-items-center">
                                    <div class="d-flex gap-2">
                                        <a href="#"><img src="${resource(dir: 'icons', file: 'facbook.png')}" width="30"
                                                         height="40"/></a>
                                        <a href="#"><img src="${resource(dir: 'icons', file: 'twitter.png')}" width="30"
                                                         height="40"/></a>
                                        <a href="#"><img src="${resource(dir: 'icons', file: 'google.png')}" width="30"
                                                         height="40"/></a>
                                    </div>

                                    <div class="d-flex gap-3 ms-4">
                                        <a href="#">Download</a>
                                        <a href="#">Mark as Read</a>
                                        <a href="#">ViewFull</a>
                                        <a href="#">Post</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="border border-dark"></div>
                    <div class="m-2">
                        <div class="d-flex">
                            <img src="${resource(dir: 'icons', file: 'user2.jpg')}" width="110" height="110">

                            <div class="container ms-2">
                                <p class="mt-2">With these changes, the title "Button" will appear...</p>

                                <div class="d-flex flex-wrap gap-3 align-items-center">
                                    <div class="d-flex gap-2">
                                        <a href="#"><img src="${resource(dir: 'icons', file: 'facbook.png')}" width="30"
                                                         height="40"/></a>
                                        <a href="#"><img src="${resource(dir: 'icons', file: 'twitter.png')}" width="30"
                                                         height="40"/></a>
                                        <a href="#"><img src="${resource(dir: 'icons', file: 'google.png')}" width="30"
                                                         height="40"/></a>
                                    </div>

                                    <div class="d-flex gap-3 ms-4">
                                        <a href="#">Download</a>
                                        <a href="#">Mark as Read</a>
                                        <a href="#">ViewFull</a>
                                        <a href="#">Post</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Duplicate post block as needed -->
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
