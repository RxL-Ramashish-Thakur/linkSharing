<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search Page</title>
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
        background-image: url("${resource(dir: 'icons', file: 'search.png')}");
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
        <h1>Search</h1>
    </div>

    <!-- HEADING -->
    <div class="row mt-4 bd p-2 align-items-center">
        <div class="col-12 col-md-4 mb-2 mb-md-0">
            <a class="fw-bold fs-5">Link Sharing</a>
        </div>

        <div class="col-12 col-md-4 mb-2 mb-md-0 d-flex">
            <input class="form-control searchIcon" type="text" placeholder="Search">
            <button class="btn btn-primary ms-2">Enter</button>
        </div>

        <div class="col-12 col-md-4 d-flex align-items-center justify-content-end gap-2">
            <a href="#"><img src="${resource(dir: 'icons', file: 'link.jpeg')}" width="40" height="40" alt="Link"/></a>
            <img src="${resource(dir: 'icons', file: 'user.jpeg')}" width="40" height="40" alt="User"/>
            <div class="dropdown ms-2">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-bs-toggle="dropdown" aria-expanded="false">
                    User
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <li><a class="dropdown-item" href="#">Uday</a></li>
                    <li><a class="dropdown-item" href="#">Profile</a></li>
                    <li><a class="dropdown-item" href="#">Logout</a></li>
                </ul>
            </div>
        </div>
    </div>

    <br/>

    <!-- BODY -->
    <div class="row bodyRow">
        <!-- COL1 -->
        <div class="col-md-5">
            <!-- Trending Topics -->
            <div class="bd mb-3">
                <p class="bg-secondary text-white p-2 rounded">Trending Topics</p>

                <div class="card border-0">
                    <div class="row g-0">
                        <div class="col-3">
                            <img src="${resource(dir: 'icons', file: 'user2.jpg')}" class="img-fluid" alt="User">
                        </div>
                        <div class="col-9">
                            <div class="card-body">
                                <a href="#">Grails</a>
                                <div class="d-flex justify-content-start gap-4 mt-2">
                                    <div>@Uday</div>
                                    <div>post</div>
                                    <div>Subscribe</div>
                                </div>
                                <div class="d-flex justify-content-start gap-4">
                                    <a href="#">Subscribe</a>
                                    <a href="#">30</a>
                                    <a href="#">50</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr/>

                <div class="card border-0 mt-3">
                    <div class="row g-0">
                        <div class="col-3">
                            <img src="${resource(dir: 'icons', file: 'user2.jpg')}" class="img-fluid" alt="User">
                        </div>
                        <div class="col-9">
                            <div class="card-body">
                                <div class="d-flex gap-2">
                                    <input type="text" class="form-control" placeholder="Grails">
                                    <button class="btn btn-success">Save</button>
                                </div>
                                <div class="d-flex justify-content-start gap-4 mt-2">
                                    <div>@Uday</div>
                                    <div>post</div>
                                    <div>Subscribe</div>
                                </div>
                                <div class="d-flex justify-content-start gap-4">
                                    <a href="#">Subscribe</a>
                                    <a href="#">30</a>
                                    <a href="#">50</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d-flex justify-content-between align-items-center mt-3 gap-2">
                    <select class="form-select bd w-auto">
                        <option selected>Serious</option>
                        <option>Non-Serious</option>
                    </select>
                    <select class="form-select bd w-auto">
                        <option selected>Private</option>
                        <option>Public</option>
                    </select>
                    <a href="#"><img src="${resource(dir: 'icons', file: 'mess.jpeg')}" width="30" height="30"/></a>
                    <a href="#"><img src="${resource(dir: 'icons', file: 'edit.png')}" width="30" height="30"/></a>
                    <a href="#"><img src="${resource(dir: 'icons', file: 'delete.png')}" width="30" height="30"/></a>
                </div>
            </div>

            <!-- Top Posts -->
            <div class="bd">
                <h3 class="p-2">Top Posts</h3>
                <hr/>

                <% [1, 2].each { i -> %>
                <div class="d-flex mb-3">
                    <img src="${resource(dir: 'icons', file: 'user2.jpg')}" width="80" height="80" alt="User">
                    <div class="ms-3">
                        <div class="fw-bold">Uday Pratap Singh <span class="text-muted">@uday</span></div>
                        <p>With these changes, the title "Button" will appear in the browser tab...</p>
                        <div class="d-flex flex-wrap gap-3">
                            <div class="d-flex gap-2">
                                <a href="#"><img src="${resource(dir: 'icons', file: 'facbook.png')}" width="30" height="20"/></a>
                                <a href="#"><img src="${resource(dir: 'icons', file: 'twitter.png')}" width="30" height="20"/></a>
                                <a href="#"><img src="${resource(dir: 'icons', file: 'google.png')}" width="30" height="20"/></a>
                            </div>
                            <div class="d-flex gap-3">
                                <a href="#">Download</a>
                                <a href="#">Mark as Read</a>
                                <a href="#">View Full</a>
                                <a href="#">Post</a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr/>
                <% } %>
            </div>
        </div>

        <!-- COL2 -->
        <div class="col-md-7">
            <div class="bd">
                <h3 class="p-2">Search for "test"</h3>
                <hr/>

                <% [1, 2].each { i -> %>
                <div class="d-flex mb-3">
                    <img src="${resource(dir: 'icons', file: 'user2.jpg')}" width="80" height="80" alt="User">
                    <div class="ms-3">
                        <div class="fw-bold fs-5">Uday Pratap Singh <span class="text-muted">@uday</span></div>
                        <p>With these changes, the title "Button" will appear in the browser tab...</p>
                        <div class="d-flex flex-wrap gap-3">
                            <div class="d-flex gap-2">
                                <a href="#"><img src="${resource(dir: 'icons', file: 'facbook.png')}" width="30" height="30"/></a>
                                <a href="#"><img src="${resource(dir: 'icons', file: 'twitter.png')}" width="30" height="30"/></a>
                                <a href="#"><img src="${resource(dir: 'icons', file: 'google.png')}" width="30" height="30"/></a>
                            </div>
                            <div class="d-flex gap-3">
                                <a href="#">Download</a>
                                <a href="#">Mark as Read</a>
                                <a href="#">View Full</a>
                                <a href="#">Post</a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr/>
                <% } %>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
