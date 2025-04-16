<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm bd">
    <div class="container-fluid">
        <!-- Brand -->
        <g:link class="navbar-brand fw-bold"  controller="user" action="dashBoard" >Link Sharing</g:link>

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
                <span data-bs-toggle="modal" data-bs-target="#createTopicModal" id="createTopicModel"
                      style="cursor:pointer;">
                    <asset:image src="/icons/createTopic.png" width="40" height="40" alt="createTopic"
                                 title="Create Topic"/>
                </span>


                <span data-bs-toggle="modal" data-bs-target="#sendInvitationModal" style="cursor:pointer;">
                    <asset:image src="/icons/sendInvitation.png" width="40" height="40" alt="sendInvitation"
                                 title="Send Invitation"/>
                </span>


                <span data-bs-toggle="modal" data-bs-target="#shareDocModal" style="cursor:pointer;">
                    <asset:image src="/icons/doc.png" width="30" height="30" alt="createDocRes"
                                 title="Create Document"/>
                </span>

                <span data-bs-toggle="modal" data-bs-target="#shareLinkModal" style="cursor:pointer;">
                    <asset:image src="/icons/link.jpeg" width="30" height="30" alt="shareLink" title="Create Link "/>
                </span>

                %{--        MODALES HERE FOR ALL --}%

                <g:render template="/common/createModel"/>
                <g:render template="/common/invitationModel"/>
                <g:render template="/common/documentModel"/>
                <g:render template="/common/linkModel"/>



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
                    <li><g:link controller="user" action="editProfile" class="dropdown-item">Profile</g:link></li>
                    <g:if test="${false}">
                        <li><g:link controller="user" action="allUsers" class="dropdown-item">Users</g:link></li>
                        <li><g:link controller="user" action="allTopics" class="dropdown-item">Topics</g:link></li>
                        <li><g:link controller="user" action="allPosts" class="dropdown-item">Posts</g:link></li>
                    </g:if>
                    <li><g:link controller="user" action="logout" class="dropdown-item">Logout</g:link></li>
                </ul>
            </div>
        </div>
    </div>
</nav>
