<!DOCTYPE html>
<%@ page import="project.Visibility" %>
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
        border-radius: 10px;
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
<g:if test="${flash.message}">
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        ${flash.message}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</g:if>

<g:if test="${flash.error}">
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        ${flash.error}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</g:if>


<div class="container">

    <!-- HEADING -->
    <g:render template="/common/userNavbar" model="[myTopics: myTopics, user: user]"/>
    <div class="container-fluid">

        <div class="row">

            <!-- LEFT COLUMN -->
            <div class="col-lg-6 col-md-12">
                <br>

                <!-- User Box -->
                <g:render template="/common/userBrief"
                          model="[subscriptionCount: subscriptionCount, topicCount: topicCount, user: user]"/>
                <!-- Trending Topics -->
            <div class="mt-3 bd">
                <div class="bg-secondary text-white p-2">
                    <h4>Trending Topics</h4>
                </div>

                <div class="border border-dark"></div>

                <div style="max-height: 250px; overflow-y: auto;"> <!-- SCROLLABLE CONTAINER -->
                    <g:if test="${publicTopics}">
                        <g:each in="${publicTopics}" var="topic">
                            <g:render template="/common/trendingTopic" model="[topic: topic]"/>
                            <div class="border border-dark"></div>
                        </g:each>
                    </g:if>
                    <g:else>
                        <div class="alert alert-info mt-4">You have not any subscribe topics yet.</div>
                    </g:else>
                </div>
            </div>
            <br>


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

            <!-- RIGHT COLUMN -->

            <br>

            <div class="col-lg-6 col-md-12 mt-4">

                <!-- Inbox -->
                <div class="bd">
                    <div class="bg-secondary text-white p-2">
                        <h5>Inbox</h5>
                    </div>

                    <div class="border border-dark"></div>
                    <g:render template="/common/inbox"/>
                    <div class="border border-dark"></div>
                    <g:render template="/common/inbox"/>

                </div>
                <br/>

                <!-- My Subscribes Box -->
                <div class="row g-0 mb-3 bd">

                    <div class="d-flex justify-content-between fs-4 p-2 bg-secondary">
                        <div class="fw-bold">Subscriptions</div>

                        <div><g:link controller="topic" action="subscribeTopic">View all</g:link></div>
                    </div>

                    <div class="border border-dark"></div>

                    <div style="max-height: 400px; overflow-y: auto;"><!-- Scrollable wrapper -->
                        <g:if test="${mySubscribeTopics}">
                            <g:each in="${mySubscribeTopics}" var="subscription">
                                <g:render template="/common/subscriptionTopic" model="[subscription: subscription]"/>
                                <div class="border border-dark"></div>
                            </g:each>
                        </g:if>
                        <g:else>
                            <div class="alert alert-info mt-4">You have not any subscribe topics yet.</div>
                        </g:else>
                    </div>

                </div>

            </div>

        </div>

</body>
</html>

