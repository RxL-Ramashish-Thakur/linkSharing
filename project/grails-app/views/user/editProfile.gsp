<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
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
    <div class="container my-4">
        <h1 class="text-center fw-bold">Edit Profile</h1>
    </div>

    <!-- HEADING -->
    <g:render template="/common/userNavbar" model="[myTopics: myTopics, user: user]"/>
    <br/>

    <!-- BODY -->
    <div class="row bodyRow">

        <!-- Left Column -->
        <div class="col-5">

            <br/>
            <g:render template="/common/userBrief"
                      model="[subscriptionCount: subscriptionCount, topicCount: topicCount, user: user]"/>
            <br/>
            %{--My Topic Box--}%
            <div class="row g-0 mb-3 bd">
                <div class="d-flex justify-content-between fs-4 p-2 bg-secondary">
                    <div class="fw-bold">Topic</div>

                    <div><g:link controller="topic" action="myTopics">View all</g:link></div>
                </div>

                <div class="border border-dark"></div>

                <!-- Scrollable container with vertical scroll only -->
                <div style="max-height: 400px; overflow-y: auto; overflow-x: hidden;">
                    <g:if test="${myTopics}">
                        <div class="row gx-0">
                            <g:each in="${myTopics}" var="topic">
                                <g:render template="/common/myTopic" model="[topic: topic]"/>
                            </g:each>
                        </div>
                    </g:if>
                    <g:else>
                        <div class="alert alert-info mt-4">You have not any subscribed topics yet.</div>
                    </g:else>
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
                                <g:textField name="firstName" class="col-5" value="${session.user.firstName}"/>
                            </div>

                            <div class="row m-2">
                                <label class="col-6">Last Name<span>*</span></label>
                                <g:textField name="lastName" class="col-5" value="${session.user.lastName}"/>
                            </div>

                            <div class="row m-2">
                                <label class="col-6">Photo</label>
                                <input name="photo" type="file" class="col-3"/>
                                <button class="col-2 btn btn-sm bg-primary m-2">Upload</button>
                            </div>

                            <div class="container d-flex justify-content-center align-items-center">
                                <button type="submit" class="btn bg-primary">Update</button>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
            <br/>

            <div class="bd">
                <div class="fw-bold bg-secondary">Change Password</div>

                <div class="border border-dark"></div>
                <g:form controller="user" action="changePassword">
                    <div class="row m-2">
                        <label class="col-6">Password<span>*</span></label>
                        <g:passwordField name="password" class="col-5"/>
                    </div>

                    <div class="row m-2">
                        <label class="col-6">Confirm Password<span>*</span></label>
                        <g:passwordField name="confirmPassword" class="col-5"/>
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
