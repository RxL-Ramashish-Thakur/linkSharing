<div class="row g-0 bd">
    <div class="col-md-4 container mt-1">
        <g:if test="${user?.photo}">
            <img src="${createLink(controller: 'user', action: 'showImage', id: session.user.id)}"
                 class="img-fluid rounded-start" alt="User Photo" height="150" width="150"/>
        </g:if>
        <g:else>
            <asset:image src="/icons/user.jpeg" class="img-fluid rounded-start" alt="Default Photo" height="150" width="150" />
        </g:else>
    </div>
    <div class="col-md-8">
        <div class="m-1 text-secondary">
            <h2>${user.firstName} &nbsp; ${user.lastName}</h2>
            <p>@${user.firstName}</p>
            <div class="d-flex gap-5">
                <div>
                    <div>Subscriptions</div>
                    <g:link controller="topic" action="myTopics">${subscriptionCount}</g:link>
                </div>

                <div>
                    <div>topics</div>
                    <g:link  controller="user"  action="myTopic" >${topicCount}</g:link>
                </div>
            </div>
        </div>
    </div>

</div>