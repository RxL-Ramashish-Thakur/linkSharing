package project
import project.User

class UserController {

    def saveUser() {
        println "register button click"

        try {
           /* def user = new User(params)
            println "try block ${user.properties}"
            user.save(flush: true, failOnError: true)
            flash.message = "User registered successfully."*/
            render(view: "login")
        } catch (Exception e) {
            e.printStackTrace() // So you see the actual error in console/logs
            flash.message = "Registration failed. Please check your input."
            redirect(action: "home")
        }

    }

    def login() {
        def usernameOrEmail = params.usernameOrEmail?.trim()
        def password = params.loginPassword

        // Look for user by username or email
        //def user = User.findByUserNameOrEmail(usernameOrEmail, usernameOrEmail)


        //without check logindetail and render to dashboard
         redirect( action: 'dashBoard')


       /* if (user && user.password == loginPassword) {
            if (user.active) {
                session.user = user  // Save user to session
                flash.message = "Login successful!"
                redirect( action: 'dashBoard') // Adjust as per your app
            } else {
                flash.error = "Account is deactivated."
                render(view: "home", model: [user: user])
            }
        } else {
            flash.error = "Invalid username/email or password."
            render(view: "home", model: [user: user])
        }*/
    }
     def dashBoard() {
         render(view: "dashBoard") // This should match your GSP file
     }

     def home() {
         render(view:'home')
     }


}