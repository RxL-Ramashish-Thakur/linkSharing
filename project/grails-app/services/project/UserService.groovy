package project

import groovy.transform.CompileStatic

class UserService {
    def saveUser( params,  session, flash) {
        println "Register button clicked"
        try {
            String email = params.email?.trim()
            def emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/

            if (!email || !(email ==~ emailRegex)) {
                flash.message = "Invalid email format."
                return 'home'
            }

            def user = User.findByEmail(email)
            if (user) {
                flash.message = "Email already exists."
                return 'home'
            }

            if (!params.firstName || !params.lastName) {
                flash.message = "Enter valid name."
                return 'home'
            }

            if (!params.password) {
                flash.message = "Password must not be blank."
                return 'home'
            }

            if (params.password != params.confirmPassword) {
                flash.message = "Passwords do not match."
                return 'home'
            }

            user = new User(params)
            user.save(flush: true, failOnError: true)
            flash.message = "User registered successfully."
            return 'login'

        } catch (Exception e) {
            e.printStackTrace()
            flash.message = "Something went wrong. Please try again."
            return 'home'
        }
    }


    def loginUser(Map params, def flash) {
        String email = params.email?.trim()
        String loginPassword = params.loginPassword

        if (!email || !loginPassword) {
            flash.error = "Please enter both email and password."
            return [success: false, view: 'login']
        }

        def user = User.findByEmail(email)

        if (!user) {
            flash.error = "User not found."
            return [success: false, view: 'login']
        } else if (user.password != loginPassword) {
            flash.error = "Invalid password."
            return [success: false, view: 'login']
        } else if (!user.active) {
            flash.error = "Your account is deactivated."
            return [success: false, view: 'login']
        }

        flash.message = "Login successful!"
        return [success: true, user: user]
    }

    def userTopic(User user){
        def topics = Topic.findAllByOwner(user)?:[]
        return [success: true, topic: topics]
    }
}