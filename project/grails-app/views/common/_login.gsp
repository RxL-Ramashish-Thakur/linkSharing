<div class="container bd ">
    <div class="d-flex justify-content-center align-items-center">
        <div class="fw-bold fs-4 p-2">Login</div>
    </div>

    <g:form controller="user" action="login" method="POST" class="mt-3">
        <div class="row mb-3">
            <label class="col-md-4 col-form-label fw-bold">
                Email <span class="text-danger">*</span>
            </label>
            <div class="col-md-8">
                <input type="email"
                       name="email"
                       class="form-control bd"
                       required
                       pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}"
                       title="Enter a valid email address" />
            </div>
        </div>

        <div class="row mb-3">
            <label class="col-md-4 col-form-label fw-bold">
                Password <span class="text-danger">*</span>
            </label>
            <div class="col-md-8">
                <g:passwordField name="loginPassword" class="form-control bd" required="true" />
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-8 offset-md-4 d-flex justify-content-between align-items-center">
                <a href="#" class="text-decoration-none">Forgot Password?</a>
                <g:submitButton name="login" value="Login" class="btn btn-primary" />
                <g:link controller="user" action="home" class="btn btn-primary">Registration</g:link>
            </div>
        </div>
    </g:form>

</div>
