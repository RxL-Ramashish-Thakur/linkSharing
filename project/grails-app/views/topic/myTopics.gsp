<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Topic</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
    .bd {
        border: solid 3px;
        border-radius: 7px;

    }

    input {
        border-radius: 5px;
    }

    a {
        text-decoration: none;
        color: cornflowerblue;
    }

    </style>
</head>

<body>
<div class="container my-4">
    <h1 class="text-center fw-bold">Topic</h1>
</div>
<br>
<div class="container">
<g:render template="/common/userNavbar"/>
<g:if test="${myTopics}">
    <g:each in="${myTopics}" var="topic">
        <g:render template="/common/myTopic" model="[topic: topic]"/>
    </g:each>

    <!-- Pagination -->
    <div class="d-flex justify-content-center mt-4">
        <g:paginate total="${topicTotal}" max="2" />
    </div>
</g:if>

<g:else>
    <div class="alert alert-info mt-4">You have not created any topics yet.</div>
</g:else>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>