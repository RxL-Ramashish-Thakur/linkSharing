package project

class UserController {

    def saveUser() {
        println "Register button clicked"
        try {
            String email = params.email?.trim()
            def emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/

            if (!email || !(email ==~ emailRegex)) {
                flash.message = "Invalid email format."
                redirect(action: 'home')
                return
            }
            def user = User.findByEmail(email)
            if (user) {
                flash.message = "Email already exist"
                render(view: 'home')
                return;
            }

            if (!params.firstName || !params.lastName) {
                flash.message = "Enter valid Name"
                render(view: 'home')
                return;
            }
            if (!params.password) {
                flash.message = "Password Not to be balank"
                render(view: 'home')
                return;
            }
            if (params.password != params.confirmPassword) {
                flash.message = "Password and confirm Password Not match"
                render(view: 'home')
                return;

            }
            user = new User(params)
            user.save(flush: true, failOnError: true)
            flash.message = "User registered successfully."
            redirect(action: "login")

        } catch (Exception e) {
            e.printStackTrace()
            flash.message = "Something went wrong. Please try again."
            redirect(action: 'home')
        }
    }

    def login() {
        String email = params.email
        String loginPassword = params.loginPassword
        //println(params)

        if (!email || !loginPassword) {
            flash.error = "Please try to login "
            render(view: "login")
            return
        }

        def user = User.findByEmail(email)
        //println (email)
        if (!user) {
            flash.error = "User not found."
            render(view: "login")
        } else if (user.password != loginPassword) {
            flash.error = "Invalid password."
            render(view: "login")
        } else if (!user.active) {
            flash.error = "Your account is deactivated."
            render(view: "login")
        } else {
            session.user = user
            flash.message = "Login successful!"
            redirect(action: 'dashBoard')
        }


    }

    def dashBoard() {
        if (!session.user) {
            redirect(action: 'login')
            return
        }
        render(view: "dashBoard")
    }

    def home() {

        render(view: "home")
    }

    def userProfile() {
        if (!session.user) {
            redirect(action: 'login')
            return
        }
        render(view: 'userProfile')
    }

    def editProfile() {
        if (!session.user) {
            redirect(action: 'login')
            return
        }
        render(view: 'editProfile')
    }

    def post() {
        if (!session.user) {
            redirect(action: 'login')
            return
        }
        render(view: 'post')
    }

    def topic() {
        if (!session.user) {
            redirect(action: 'login')
            return
        }
        render(view: 'topic')
    }

    def showImage() {
        //def user = User.get(params.id) // or session.user if you're using session
        if (!session.user) {
            redirect(action: 'login')
            return
        }
        if (session.user?.photo) {
            response.contentType = 'image/jpeg' // or 'image/png' depending on the format
            response.outputStream << session.user.photo
            response.outputStream.flush()
        } else {
            // Fallback image if user has no photo
            redirect(uri: '/assets/icons/user.jpeg')
        }
    }


}
