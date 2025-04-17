<!-- Modal Form for Creating Topic -->
<%@ page import="project.Visibility" %>
<div class="modal fade" id="createTopicModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content p-3">
            <h3>Create Topic</h3>
            <g:form controller="topic" action="save" class="mt-3">
                <div class="mb-3">
                    <label>Name *</label>
                    <g:textField name="name" class="form-control" required="true" placeholder="Enter topic name"/>
                </div>

                <div class="mb-3">
                    <label>Visibility *</label>

                    <g:select name="visibility" from="${Visibility.values()}" class="form-select"/>
                </div>

                <div class="text-end">
                    <button type="submit" class="btn btn-primary me-2">Create</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </g:form>
        </div>
    </div>
</div>

