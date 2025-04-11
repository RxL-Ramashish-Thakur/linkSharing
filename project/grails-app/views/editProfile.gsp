<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
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
        background-image: url('${assetPath(src: 'icons/search.png')}');
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
<div class="container main">
    <div class="container mt-2 topShow">
        <h1>Edit Profile</h1>
    </div>

    <!-- HEADER -->
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
    <br />

    <!-- BODY -->
    <div class="row bodyRow">
        <!-- Left Column -->
        <div class="col-5">
            <div class="container bd">
                <div class="m-1">
                    <div class="card border-0" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-3">
                                <img src="${assetPath(src: 'icons/user2.jpg')}" height="100px" />
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <div class="h3">Uday Pratap Singh</div>
                                    <div class="d-flex justify-content-center align-items-center gap-5 mt-1">
                                        <div>@Uday</div>
                                        <div>post</div>
                                        <div>Subscribe</div>
                                    </div>
                                    <div class="d-flex justify-content-center align-items-center gap-5">
                                        <div><a href="#">Subscribe</a></div>
                                        <div><a href="#">30</a></div>
                                        <div><a href="#">50</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="bd">
                <div class="d-flex justify-content-between bg-secondary">
                    <div class="container fs-4 fw-bold">Search</div>
                    <div class="m-1">
                        <input class="bd rounded-3 searchIcon" type="text" placeholder="Search">
                    </div>
                </div>
                <div class="border border-dark"></div>
                <div class="p-1 rounded-2">
                    <div class="card border-0" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-3">
                                <img src="${assetPath(src: 'icons/user2.jpg')}" height="100px" />
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <div class="d-flex justify-content-center align-items-center gap-1">
                                        <input type="text" placeholder="Grails" />
                                        <button class="rounded-3 fw-bold">Save</button>
                                    </div>
                                    <div class="d-flex justify-content-center align-items-center gap-5 mt-1">
                                        <div>@Uday</div>
                                        <div>post</div>
                                        <div>Subscribe</div>
                                    </div>
                                    <div class="d-flex justify-content-center align-items-center gap-5">
                                        <div><a href="#">Subscribe</a></div>
                                        <div><a href="#">30</a></div>
                                        <div><a href="#">50</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-flex justify-content-between gap-2 align-items-center m-2">
                    <div class="d-flex gap-5">
                        <select class="form-select bd">
                            <option selected>Serious</option>
                            <option value="1">Non-Serious</option>
                        </select>
                        <select class="form-select bd">
                            <option selected>Private</option>
                            <option value="1">Public</option>
                        </select>
                    </div>
                    <div class="icon">
                        <img src="${assetPath(src: 'icons/message.jpeg')}" width="40px" height="30px" />
                    </div>
                    <div class="icon">
                        <img src="${assetPath(src: 'icons/edit.png')}" width="40px" height="30px" />
                    </div>
                    <div class="icon">
                        <img src="${assetPath(src: 'icons/delete.png')}" width="40px" height="30px" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Column -->
        <div class="col-7">
            <div class="ProfileUpdate">
                <div class="bd fst-italic fw-bolder ar">
                    <div class="bg-secondary p-1 fw-bold">Profile</div>
                    <div class="border border-dark"></div>
                    <g:form controller="user" action="updateProfile" enctype="multipart/form-data">
                        <div class="container m-2">
                            <div class="row m-2">
                                <label class="col-6">First Name<span>*</span></label>
                                <g:textField name="firstName" class="col-5" value="${user?.firstName}" />
                            </div>
                            <div class="row m-2">
                                <label class="col-6">Last Name<span>*</span></label>
                                <g:textField name="lastName" class="col-5" value="${user?.lastName}" />
                            </div>
                            <div class="row m-2">
                                <label class="col-6">User Name<span>*</span></label>
                                <g:textField name="userName" class="col-5" value="${user?.username}" />
                            </div>
                            <div class="row m-2">
                                <label class="col-6">Photo</label>
                                <input name="photo" type="file" class="col-3" />
                                <button class="col-2 btn btn-sm bg-primary m-2">Upload</button>
                            </div>
                            <div class="container d-flex justify-content-center align-items-center">
                                <button type="submit" class="btn bg-primary">Update</button>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
            <br />
            <div class="bd">
                <div class="fw-bold bg-secondary">Change Password</div>
                <div class="border border-dark"></div>
                <g:form controller="user" action="changePassword">
                    <div class="row m-2">
                        <label class="col-6">Password<span>*</span></label>
                        <g:passwordField name="password" class="col-5" />
                    </div>
                    <div class="row m-2">
                        <label class="col-6">Confirm Password<span>*</span></label>
                        <g:passwordField name="confirmPassword" class="col-5" />
                    </div>
                    <div class="d-flex justify-content-center mb-1">
                        <button type="submit" class="btn bg-primary">Update</button>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
