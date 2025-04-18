<div class="row g-0 border rounded p-3 mb-3 ">
    <div class="col-md-2 d-flex align-items-center">
        <asset:image src="/icons/user.jpeg" alt="User" width="120" height="120"/>
    </div>

    <div class="col-md-10 ps-4">

        <h4 class="text-secondary fw-bold mb-1">@${subscription?.topic?.owner?.firstName} &nbsp; ${subscription?.topic?.owner?.lastName}</h4>

        <div class="d-flex justify-content-between">
            <h5 class="text-dark fw-bold mb-1">${subscription?.topic?.name}</h5>
            %{--            <p class="text-muted mb-2">@${subscription?.topic?.owner?.firstName}</p>--}%
        </div>


        <div class="d-flex justify-content-between text-muted small">
            <div><i class="bi bi-people-fill  me-1"></i>Subscriptions: <strong>${subscription?.topic?.subscriptions?.size() ?: 0}</strong>
            </div>

            <div>
                <i class="bi bi-file-earmark-text me-1"></i>
                Posts: <strong>${subscription?.topic?.resourcesTable?.size() ?: 0}</strong>
            </div>

            <div class="mb-3"><g:if test="${session.user?.id != subscription?.topic?.owner?.id}">
                <g:link controller="topic" action="subscribeUnsubscribe" params="[topicId: subscription.topic.id]">
                    <button class="btn btn-sm btn-danger rounded-pill px-3">
                    <i class="bi bi-x-circle me-1"></i> Unsubscribe
                </button>

                </g:link>
            </g:if>
            </div>
        </div>
    </div>
</div>
