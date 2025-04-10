<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
    .bd {
        border: solid 3px;
    }

    a {
        text-decoration: none;
        color: cornflowerblue;
    }

    .searchIcon {
        background-image: url('${resource(dir: 'icons', file: 'search.png')}');
        background-position: 10px center;
        background-repeat: no-repeat;
        background-size: 20px 20px;
        padding-left: 40px;
    }

    .addb {
        border: solid 3px red;
    }

    button {
        cursor: pointer;
    }
    </style>
</head>

<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

<div class="container">
    <!-- HEADING -->
    <div class="container mt-4 p-2 bd">
        <div class="row align-items-center">
            <div class="col-12 col-md-4 d-flex align-items-center mb-2 mb-md-0">
                <a href="#">Link Sharing</a>
            </div>

            <div class="col-12 col-md-3 d-flex mb-2 mb-md-0">
                <input class="form-control me-2" type="text" placeholder="Search"/>
                <button class="btn btn-primary" type="button">Enter</button>
            </div>

            <div class="col-12 col-md-5 d-flex justify-content-between align-items-center">
                <a href="#"><img src="${resource(dir: 'icons', file: 'NOTIFICATION.jpeg')}" width="30" height="30"
                                 alt="Notification"/></a>
                <a href="#"><img src="${resource(dir: 'icons', file: 'mess.jpeg')}" width="30" height="30"
                                 alt="Message"/></a>
                <a href="#"><img src="${resource(dir: 'icons', file: 'link.jpeg')}" width="30" height="30" alt="Link"/>
                </a>
                <img src="${resource(dir: 'icons', file: 'user.jpeg')}" width="30" height="30" alt="User"/>

                <div class="dropdown ms-2">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                            data-bs-toggle="dropdown" aria-expanded="false">
                        User
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li><a class="dropdown-item" href="#">Users</a></li>
                        <li><a class="dropdown-item" href="#">Topic</a></li>
                        <li><a class="dropdown-item" href="#">Post</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <!-- LEFT COLUMN -->
            <div class="col-lg-6 col-md-12">
                <!-- User Box -->
                <br>

                %{--
                            USER NAME AND TOPIC COUNT
                --}%
                <div class="row g-0 bd">
                    <div class="col-md-4 container mt-1">
                        <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>
                    </div>

                    <div class="col-md-8">
                        <div class="m-1 text-secondary">
                            <h2>Uday Pratap Singh</h2>

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



                <!-- Subscribes Box -->
                <br>
                <div class="row g-0 mb-3 bd">
                    <div class="d-flex justify-content-between gap-5 fs-4 p-1 bg-secondary">
                        <div class="fw-bold">Subscriptions</div>

                        <div><a href="#">View all</a></div>
                    </div>

                    <div class="border border-dark"></div>

                    <div class="row g-0">
                        <div class="col-md-4 container mt-1">
                            <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>
                        </div>

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

                                    <div class="d-flex justify-content-centre align-item-centre gap-1 ">
                                        <div class="icon mb-3">
                                            <a href="#"><img src="../icons/NOTIFICATION.jpeg" width="50px" height="40px"
                                                             alt="Message"></a>
                                        </div>

                                        <div class="icon mb-3">
                                            <a href="#"><img src="../icons/edit.png" width="50px" height="40px"
                                                             alt="Message"></a>
                                        </div>

                                        <div class="icon mb-3">
                                            <a href="#"><img src="../icons/delete.png" width="50px" height="40px"
                                                             alt="Message"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="border border-dark"></div>

                    <div class="row g-0">
                        <div class="col-md-4 container mt-1">
                            <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>
                        </div>

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
                <br>



                <!-- Trending Topics -->
                       <div class="mt-3 bd">
                    <div class="bg-secondary text-white p-2">
                        <h4>Trending Topics</h4>
                    </div>

                    <div class="border border-dark"></div>

                    <div class="row g-0 ">
                        <div class="col-md-4 container mt-1">
                            <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>
                        </div>

                        <div class="col-md-8">
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

                        <div class="border border-dark"></div>

                        <div class="row g-0">
                            <div class="col-md-4 container mt-1">
                                <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>
                            </div>

                            <div class="col-md-8">
                                <div class="m-1 text-secondary">
                                    <div class="d-flex gap-3">
                                        <input type="text" placeholder="grails">
                                        <button class="btn btn-sm bd ">Save</button>
                                        <button class="btn btn-sm bd">Cencel</button>

                                    </div>

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

                                        <div class="d-flex justify-content-centre align-item-centre gap-1 ">
                                            <div class="icon mb-3">
                                                <a href="#"><img src="../icons/NOTIFICATION.jpeg" width="50px"
                                                                 height="40px" alt="Message"></a>
                                            </div>

                                            <div class="icon mb-3">
                                                <a href="#"><img src="../icons/edit.png" width="50px" height="40px"
                                                                 alt="Message"></a>
                                            </div>

                                            <div class="icon mb-3">
                                                <a href="#"><img src="../icons/delete.png" width="50px" height="40px"
                                                                 alt="Message"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <br>


                <!-- Send Invitation -->
                <div class="mt-3 p-3 bd bg-light ">
                    <h3 >Send Invitation</h3>

                    <form>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Email *</label>

                            <div class="col-sm-9">
                                <input type="email" class="form-control" placeholder="email">
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Topic *</label>

                            <div class="col-sm-9">
                                <select class="form-select">
                                    <option selected>Topic</option>
                                    <option value="1">Topic Other</option>
                                </select>
                            </div>
                        </div>

                        <div class="text-end">
                            <button class="btn btn-primary me-2">Invite</button>
                            <button class="btn btn-secondary">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>





            <!-- RIGHT COLUMN -->

            <br>

            <div class="col-lg-6 col-md-12 mt-4">

                <!-- Inbox -->
                     <div class="bd">
                    <div class="bg-secondary text-white p-2">
                        <h5>Inbox</h5>
                    </div>

                    <div class="border border-dark"></div>

                    <div class="row g-0 mb-3">
                        <div class="col-md-2 container mt-1">
                            <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>
                        </div>

                        <div class="col-md-9">
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

                    <div class="border border-dark"></div>

                    <div class="row g-0 mb-3">
                        <div class="col-md-2 container mt-1">
                            <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="..."/>
                        </div>

                        <div class="col-md-9">
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


                <!-- Share Link -->
                   <div class="mt-3 p-3 border border-dark rounded bg-light">
                    <h3 class=" fw-bold ">Share Link</h3>

                    <form>
                        <div class="mb-3">
                            <label>Link *</label>
                            <input type="url" class="form-control" placeholder="Paste your link">
                        </div>

                        <div class="mb-3">
                            <label>Description *</label>
                            <textarea class="form-control" rows="3"></textarea>
                        </div>

                        <div class="mb-3">
                            <label>Topic *</label>
                            <select class="form-select">
                                <option selected>Topic</option>
                                <option value="1">Topic Other</option>
                            </select>
                        </div>

                        <div class="text-end">
                            <button class="btn btn-success me-2">Share</button>
                            <button class="btn btn-secondary">Cancel</button>
                        </div>
                    </form>
                </div>

                <!-- Share Document -->
                     <div class="mt-3 p-3 border border-dark rounded bg-light">
                    <h3 class="">Share Document</h3>

                    <form>
                        <div class="mb-3">
                            <label>Upload *</label>
                            <input type="file" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label>Description *</label>
                            <textarea class="form-control" rows="3"></textarea>
                        </div>

                        <div class="mb-3">
                            <label>Topic *</label>
                            <select class="form-select">
                                <option selected>Topic</option>
                                <option value="1">Topic Other</option>
                            </select>
                        </div>

                        <div class="text-end">
                            <button class="btn btn-success me-2">Share</button>
                            <button class="btn btn-secondary">Cancel</button>
                        </div>
                    </form>
                </div>

                <!-- Create Topic -->
                     <div class="mt-3 p-3 border border-dark rounded bg-light">
                    <h3>Create Topic</h3>

                    <form>
                        <div class="mb-3">
                            <label>Name *</label>
                            <input type="text" class="form-control" placeholder="name">
                        </div>

                        <div class="mb-3">
                            <label>Visibility *</label>
                            <select class="form-select">
                                <option selected>Public</option>
                                <option value="1">Private</option>
                            </select>
                        </div>

                        <div class="text-end">
                            <button class="btn btn-primary me-2">Create</button>
                            <button class="btn btn-secondary">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
</body>
</html>

