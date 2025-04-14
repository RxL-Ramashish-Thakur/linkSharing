<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm bd">
    <div class="container-fluid">
        <!-- Brand -->
        <a class="navbar-brand fw-bold" href="#">Link Sharing</a>

        <!-- Toggler (for small screens) -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar content -->
        <div class="collapse navbar-collapse" id="navbarContent">

            <!-- Left: Search bar -->
            <form class="d-flex me-auto my-2 my-lg-0">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-primary" type="submit">Enter</button>
            </form>

            <!-- Center: Icon actions -->
            <div class="d-flex align-items-center gap-3 me-4">
                <!-- Share Document Icon -->
                <span data-bs-toggle="modal" data-bs-target="#shareDocModal" style="cursor:pointer;">
                    <asset:image src="/icons/doc.png" width="30" height="30" alt="shareDocument"/>
                </span>

                <!-- Create Topic Icon -->
                <span data-bs-toggle="modal" data-bs-target="#createTopicModal" style="cursor:pointer;">
                    <asset:image src="/icons/createTopic.png" width="40" height="40" alt="createTopic"/>
                </span>

                <!-- Share Link Icon -->
                <span data-bs-toggle="modal" data-bs-target="#shareLinkModal" style="cursor:pointer;">
                    <asset:image src="/icons/link.jpeg" width="30" height="30" alt="shareLink"/>
                </span>

                <!-- User Icon -->
                <span style="cursor:pointer;">
                    <asset:image src="/icons/user.jpeg" width="30" height="30" alt="user"/>
                </span>
            </div>

            <!-- Right: Dropdown -->
            <div class="dropdown">
                <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="userDropdown"
                        data-bs-toggle="dropdown" aria-expanded="false">
                    <g:if test="${session.user}">
                        ${session.user.firstName}
                    </g:if>
                </button>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                    <li><g:link controller="user" action="userProfile" class="dropdown-item">Profile</g:link></li>
                    <li><g:link controller="user" action="editProfile" class="dropdown-item">Edit Profile</g:link></li>
                    <li><g:link controller="user" action="topic" class="dropdown-item">Topic</g:link></li>
                    <li><g:link controller="user" action="post" class="dropdown-item">Post</g:link></li>
                </ul>
            </div>
        </div>
    </div>
</nav>
