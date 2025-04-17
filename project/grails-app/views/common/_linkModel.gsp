<div class="modal fade" id="shareLinkModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content p-3">
            <h3 class="fw-bold">Add Link</h3>

            <g:form controller="user" action="saveLink">
                <div class="mb-3">
                    <label>Link *</label>
                    <input type="url" class="form-control" name="url" placeholder="Paste your link" required />
                </div>

                <div class="mb-3">
                    <label>Description *</label>
                    <textarea class="form-control" name="description" rows="3" required></textarea>
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
                    <button type="submit" class="btn btn-success me-2">Add</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </g:form>

        </div>
    </div>
</div>
