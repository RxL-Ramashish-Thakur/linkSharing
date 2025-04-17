<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Subscribed Topics</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    .topic-card {
        border: 1px solid #ddd;
        border-radius: 10px;
        padding: 15px;
    }
    </style>
</head>
<body>

<div class="container my-4">
    <h2 class="text-center mb-4">My Subscribed Topics</h2>
    <g:render template="/common/userNavbar" model="[myTopics: myTopics, user: user]"/>


    <br/>

    <g:if test="${subscriptions}">
        <div class="row g-4">
            <g:each in="${subscriptions}" var="subscription">
                <div class="col-12">
                    <div class="topic-card shadow-sm">
                        <div class="d-flex align-items-center mb-3">
                            <g:if test="${subscriptions?.topic?.owner?.photo}">
                                <img src="${createLink(controller: 'user', action: 'showImage', id: subscription?.topic?.owner?.id)}"
                                     alt="Owner Photo" width="150" height="150" />
                            </g:if>
                            <g:else>
                                <asset:image src="/icons/user.jpeg" alt="Default" width="150" height="150" />
                            </g:else>
                            <div>
                                <h5 class="mb-0">${subscription?.topic?.name}</h5>
                                <small>@${subscription?.topic?.owner?.firstName}</small>
                            </div>
                        </div>
                    </div>
                </div>
            </g:each>
        </div>

        <!-- Pagination Buttons -->
        <div class="d-flex justify-content-center mt-4">
            <g:paginate
                    controller="topic"
                    action="subscribeTopic"
                    total="${subscriptionCount}"
                    max="${max}"
                    params="[max: max]" />
        </div>


    </g:if>
    <g:else>
        <div class="alert alert-info text-center mt-5">You haven't subscribed to any topics yet.</div>
    </g:else>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
