<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Topic Show</title>
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
%{--#3 thing is display--}%
%{--1.self created topic--}%
%{--2.subscribe topic--}%
%{--3.inbox of post--}%

<div class="container ">
    <div class="container-fluid main">

        <div class="container mt-2 topShow">
            <h1>Top Show</h1>
        </div>

        <!-- Heading -->
        <g:render template="/common/userNavbar"/>
        <br>

        <!-- Body -->
        <div class="row bodyRow">
            <!-- Left Column -->

            <div class="col-lg-5">

                <!--User Topic Card -->
                <g:render template="/common/myTopic"/>
                <br/>

                <!-- Other people subscribe topic  Card  -->
                <g:render template="/common/subscriptionTopic"

              %{--  <div class="bd mb-3">
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
                    second user
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
                </div>--}%
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
