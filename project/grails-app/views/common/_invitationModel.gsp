<!-- Modal: Send Invitation -->

<div class="modal fade" id="sendInvitationModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content p-3">
            <h3>Send Invitation</h3>

            <form controller="user"  action="sendInvite" method="post" >
                <div class="mb-3 row">
                    <label class="col-sm-3 col-form-label">Email *</label>

                    <div class="col-sm-9">
                        <input type="email" class="form-control" placeholder="email" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label class="col-sm-3 col-form-label">Topic *</label>
                    <div class="col-sm-9">
                        <select class="form-select" name="topicId">
                            <g:each in="${myTopics}" var="topic">
                                <option value="${topic.id}">${topic.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>

                <div class="text-end">
                    <button type="submit" class="btn btn-primary me-2">Invite</button>
                    <button type="button" class="btn btn-secondary"
                            data-bs-dismiss="modal">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>