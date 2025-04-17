<div class="row g-0 border rounded p-3 mb-3 ">
    <div class="col-md-2 d-flex align-items-center">
        <asset:image src="/icons/user.jpeg"  alt="User" width="120" height="120"/>
    </div>
    <div class="col-md-10 p-2">
        <h4 class="text-secondary fw-bold mb-1">${user.firstName} &nbsp; ${user.lastName}</h4>
        <div class="d-flex justify-content-between">
            <h5 class="text-dark fw-bold mb-1">${subscription?.topic?.name}</h5>
            <p class="text-muted mb-2">@${subscription?.topic?.owner?.firstName}</p>
        </div>


        <div class="d-flex justify-content-between text-muted small">
            <div><i class="bi bi-people-fill  me-1"></i>Subscriptions: <strong>${subscription?.topic?.subscriptions?.size() ?: 0}</strong></div>
            <div class="mb-3">
%{--                <label>Sub *</label>--}%
                <select class="form-select" name="topicId" required>
                        <option value="subscribe">Subscribe</option>
                        <option value="unsubscribe">Unsubscribe</option>
                </select>
            </div>
            <div><i class="bi  bi-chat-left-dots me-1"></i>Posts: <strong>50</strong></div>
        </div>
    </div>
</div>
