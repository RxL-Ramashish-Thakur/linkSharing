<%@ page import="project.Visibility" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My Topic</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

    <style>
    .bd {
        border: solid 3px;
        border-radius: 5px;
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
<div class="container">
    <g:render template="/common/userNavbar"/>
    <h2 class="text-center">My Topics</h2>
    <div class="border border-dark my-3"></div>

    <g:if test="${myTopics}">
        <g:each in="${myTopics}" var="topic">
            <div class="card border-0 shadow-sm rounded-4 mb-4">
                <div class="card-body p-4">
                    <div class="row align-items-center">
                        <!-- Topic Image -->
                        <div class="col-md-3 text-center mb-3 mb-md-0">
                            <asset:image src="/icons/user.jpeg" alt="User Photo" style="width: 120px; height: 120px;"/>
                        </div>

                        <!-- Topic Info and Actions -->
                        <div class="col-md-9">
                            <!-- Header -->
                            <div class="d-flex justify-content-between align-items-start mb-2">
                                <div>
                                    <h4 class="text-dark fw-bold mb-0">${topic?.name}</h4>
                                    <small class="text-muted">@${topic?.owner?.firstName}</small>
                                </div>
                        <!-- Action Icons with Bootstrap Icons -->
                        <div class="d-flex gap-3 fs-5">
                            <span data-bs-toggle="modal" data-bs-target="#sendInvitationModal" style="cursor:pointer;" title="Invite">
                                <i class="bi bi-envelope-plus text-primary"></i>
                            </span>
                            <g:render template="/common/invitationModel"/>

                            <span data-bs-toggle="modal" data-bs-target="#editModal-${topic.id}" style="cursor:pointer;" title="Edit">
                                <i class="bi bi-pencil-square text-success"></i>
                            </span>

                            <span data-bs-toggle="modal" data-bs-target="#deleteModal-${topic.id}" style="cursor:pointer;" title="Delete">
                                <i class="bi bi-trash3 text-danger"></i>
                            </span>
                        </div>

                    </div>

                        <!-- Search + Save -->
                            <g:form controller="topic" action="update" class="input-group input-group-sm mb-3">
                                <g:hiddenField name="id" value="${topic?.id}"/>
                                <g:textField name="name" value="${topic?.name}" class="form-control"/>
                                <button type="submit" class="btn btn-success">Save</button>
                            </g:form>

                        <!-- Stats -->
                            <div class="d-flex justify-content-start gap-4 text-muted small mb-3">
                                <div><i class="bi bi-people-fill me-1"></i>Subscriptions: <strong>${topic?.subscriptions?.size() ?: 0}</strong></div>
                                <div><i class="bi bi-file-earmark-text me-1"></i>Posts: <strong>${topic?.resourcesTable?.size() ?: 0}</strong></div>
                            </div>

                            <!-- Dropdowns -->
                            <div class="d-flex gap-3">
                                <g:select name="seriousness"
                                          from="${['VERY_SERIOUS', 'SERIOUS', 'CASUAL']}"
                                          value="VERY_SERIOUS"
                                          class="form-select form-select-sm w-50"/>
                                <g:select name="visibility"
                                          from="${Visibility.values()}"
                                          value="${topic.visibility}"
                                          class="form-select form-select-sm w-50"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Edit Modal -->
            <div class="modal fade" id="editModal-${topic?.id}" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content p-3 rounded-4">
                        <h5>Edit Topic</h5>
                        <g:form controller="topic" action="update" class="mt-3">
                            <g:hiddenField name="id" value="${topic?.id}"/>

                            <div class="mb-3">
                                <label class="form-label">Topic Name *</label>
                                <g:textField name="name" class="form-control" value="${topic?.name}" required="true"/>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Visibility *</label>
                                <g:select name="visibility" class="form-select"
                                          from="${Visibility.values()}" value="${topic.visibility}"/>
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
            <div class="modal fade" id="deleteModal-${topic?.id}" tabindex="-1" aria-hidden="true">
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
                                <g:hiddenField name="id" value="${topic.id}"/>
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </g:each>
    </g:if>

    <g:else>
        <div class="alert alert-info mt-4">You have not created any topics yet.</div>
    </g:else>
</div>
</body>
</html>
