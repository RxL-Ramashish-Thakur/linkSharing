<div class="bd p-3">
    <g:uploadForm controller="user" action="saveUser" method="POST" class="container">
        <div class="row m-1">
            <label class="col-6">First Name *</label>
            <g:textField name="firstName" class="col-5" required="true" />
        </div>

        <div class="row m-2">
            <label class="col-6">Last Name *</label>
            <g:textField name="lastName" class="col-5" required="true"/>
        </div>

        <div class="row m-2">
            <label class="col-6">Email *</label>
            <g:textField name="email" class="col-5" required="true"/>
        </div>
        <div class="row m-2">
            <label class="col-6">Password *</label>
            <g:passwordField name="password" class="col-5" required="true"/>
        </div>

        <div class="row m-2">
            <label class="col-6">Confirm Password *</label>
            <g:passwordField name="confirmPassword" required="true" class="col-5"/>
        </div>

        <div class="row m-2">
            <label class="col-6">Photo *</label>
            <input type="file" name="photo"  class="col-3"/>
        </div>

        <div class="text-center">
            <g:submitButton name="register" value="Register" class="btn btn-primary"/>

        </div>
    </g:uploadForm>
</div>