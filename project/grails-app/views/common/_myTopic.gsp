<%@ page import="project.Visibility" %>

<div class="card border-0 shadow-sm rounded-4 mb-4">
    <div class="card-body p-4">
        <div class="row align-items-center">
            <!-- Topic Image -->
            <div class="col-md-3 text-center mb-3 mb-md-0">
                <asset:image src="/icons/user.jpeg"  alt="User Photo" style="width: 120px; height: 120px;" />
            </div>

            <!-- Topic Info and Actions -->
            <div class="col-md-9">
                <!-- Header -->
                <div class="d-flex justify-content-between align-items-start mb-2">
                    <div>
                        <h4 class="text-dark fw-bold mb-0">${topic.name}</h4>
                        <small class="text-muted">@${topic.owner?.firstName}</small>
                    </div>
                    <!-- Action Icons -->
                    <div class="d-flex gap-3">
                        <span data-bs-toggle="modal" data-bs-target="#sendInvitationModal" style="cursor:pointer;">
                            <asset:image src="/icons/sendInvitation.png" style="width: 24px;" title="Invite"/>
                        </span>
                        <g:render template="/common/invitationModel"/>

                        <span data-bs-toggle="modal" data-bs-target="#editModal-${topic.id}" style="cursor:pointer;">
                            <asset:image src="/icons/edit.png" style="width: 24px;" title="Edit"/>
                        </span>

                        <span data-bs-toggle="modal" data-bs-target="#deleteModal-${topic.id}" style="cursor:pointer;">
                            <asset:image src="/icons/delete.png" style="width: 24px;" title="Delete"/>
                        </span>
                    </div>
                </div>

                <!-- Search + Save -->
                <div class="input-group input-group-sm mb-3">
                    <g:textField name="searchKey" value="${topic.name}" class="form-control" />
                    <button class="btn btn-success">Save</button>
                </div>

                <!-- Stats -->
                <div class="d-flex justify-content-start gap-4 text-muted small mb-3">
                    <div><i class="bi bi-people-fill me-1"></i>Subscriptions: <strong>${topic.subscriptions?.size() ?: 0}</strong></div>
                    <div><i class="bi bi-chat-left-dots me-1"></i>Posts: <strong>50</strong></div>
                </div>

                <!-- Dropdowns -->
                <div class="d-flex gap-3">
                    <g:select name="seriousness"
                              from="${['VERY_SERIOUS', 'SERIOUS', 'CASUAL']}"
                              value="VERY_SERIOUS"
                              class="form-select form-select-sm w-50" />
                    <g:select name="visibility"
                              from="${Visibility.values()}"
                              value="${topic.visibility}"
                              class="form-select form-select-sm w-50" />
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Edit Modal -->
<div class="modal fade" id="editModal-${topic.id}" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content p-3 rounded-4">
            <h5>Edit Topic</h5>
            <g:form controller="topic" action="update" class="mt-3">
                <g:hiddenField name="id" value="${topic.id}" />

                <div class="mb-3">
                    <label class="form-label">Topic Name *</label>
                    <g:textField name="name" class="form-control" value="${topic.name}" required="true" />
                </div>

                <div class="mb-3">
                    <label class="form-label">Visibility *</label>
                    <g:select name="visibility" class="form-select"
                              from="${Visibility.values()}" value="${topic.visibility}" />
                </div>

                <div class="text-end">
                    <button type="submit" class="btn btn-success">Save</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </g:form>
        </div>
    </div>
</div>


<!-- Delete Modal -->
<div class="modal fade" id="deleteModal-${topic.id}" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content rounded-4">
            <div class="modal-header">
                <h5 class="modal-title text-danger">Delete Topic</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete <strong>${topic.name}</strong>?
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <g:form controller="topic" action="delete">
                    <g:hiddenField name="id" value="${topic.id}" />
                    <button type="submit" class="btn btn-danger">Delete</button>
                </g:form>
            </div>
        </div>
    </div>
</div>
