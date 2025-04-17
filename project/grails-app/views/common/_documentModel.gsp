<div class="modal fade" id="shareDocModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content p-3">
            <h3>Create Document</h3>

            <g:form controller="user" action="saveDocument" method="POST" enctype="multipart/form-data">
                <div class="mb-3">
                    <label>Upload *</label>
                    <input type="file" name="document" class="form-control" required />
                </div>

                <div class="mb-3">
                    <label>Description *</label>
                    <textarea name="description" class="form-control" rows="3" required></textarea>
                </div>

                <div class="mb-3">
                    <label>Topic *</label>
                    <select class="form-select" name="topicId" required>
                        <g:each in="${topics}" var="topic">
                            <option value="${topic.id}">${topic.name}</option>
                        </g:each>
                    </select>
                </div>

                <div class="text-end">
                    <button type="submit" class="btn btn-success me-2">Share</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </g:form>
        </div>
    </div>
</div>
