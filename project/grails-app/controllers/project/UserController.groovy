package project

import org.springframework.web.multipart.MultipartFile


class UserController {
    def userService
    def DashboardService

    def saveUser() {
        println "Register button clicked"
        def resultView = userService.saveUser(params, session, flash)
        if (resultView == 'login') {
            redirect(action: resultView)
        } else {
            render(view: resultView)
        }
    }

    def login() {
        def result = userService.loginUser(params, flash)

        if (result.success) {
            session.user = result.user
            redirect(action: 'dashBoard')
            //redirect(action: 'dashBoard',model:[user:result.user]) // Just redirect
        } else {
            render(view: 'home')
        }
    }


    def dashBoard() {
        if (!session.user) {
            render(view: 'home')
            return
        }
        def dashboardModel = DashboardService.getDashboardModel(session.user)
        render(view: "dashBoard", model: dashboardModel)
//        def user = session.user
//        def topics = Topic.findAllByOwner(session.user)
//        def subscriptionCount = Subscription.countByUser(session.user) ?: 0
//        def topicCount = Topic.countByOwner(session.user) ?: 0
//        def myTopics = Topic.findAllByOwner(user)
//        def subscriptions = Subscription.findAllByUser(user)
//        def grouped = Subscription.createCriteria().list {
//            projections {
//                groupProperty("topic")
//                count("id", "subCount")
//            }
//            order("subCount", "desc")
//            maxResults(1)
//        }
//        println("finding trending topic ")
//        println(grouped)
//        def mostSubscribedTopic = grouped ? grouped[0][0] : null
//        println(mostSubscribedTopic)
//        def mostSubscriptions = mostSubscribedTopic ? Subscription.findAllByTopic(mostSubscribedTopic) : []
//        println(mostSubscriptions)
//        render(view: "dashBoard", model: [subscriptionCount: subscriptionCount, topicCount: topicCount, user: user, myTopics: myTopics,
//                                          subscriptions    : subscriptions, mostSubscriptions: mostSubscriptions])

    }


    def home() {
        render(view: "home")
    }

    def editProfile() {
        if (!session.user) {
            redirect(action: 'home')
            return
        }
        def dashboardModel = DashboardService.getDashboardModel(session.user)
        render(view: "editProfile", model: dashboardModel)

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

    def logout() {
        session.invalidate() // Clears the entire session
        flash.message = "You have been logged out successfully."
        redirect(action: 'home') // assuming home is an action, not just a view
    }

    def myTopic() {
        if (!session.user) {
            redirect(controller: 'user', action: 'login')
            return
        }
        println(user: session.user)
        def myTopics = Topic.findAllByOwner(session.user) ?: []
        println(myTopics: myTopics)
        render(view: "myTopic", model: [myTopics: myTopics])

    }
//send Inviattion
    def sendInvite() {
        if (!session.user) {
            redirect(action: 'login')
            return
        }
        flash.error = "Domain Restricted to send mail to other Domain"
        redirect(controller: 'user', action: 'dashBoard')
    }

    //save document
    def saveDocument() {
        MultipartFile file = request.getFile('document')

        if (!file?.empty) {
            // Safer upload directory
            String uploadDir = "${grailsApplication.mainContext.servletContext.getRealPath('/uploads')}"
            String filename = UUID.randomUUID().toString() + "_" + file.originalFilename
            String filePath = "${uploadDir}/${filename}"

            File savedFile = new File(filePath)
            savedFile.parentFile.mkdirs() // ensure directory exists
            file.transferTo(savedFile)

            def documentResource = new DocumentResource(
                    description: params.description,
                    owner: session.user,
                    topic: Topic.get(params.topicId),
                    filePath: filePath,
                    originalFilename: file.originalFilename
            )

            if (documentResource.save(flush: true)) {
                flash.message = "Document shared successfully"
            } else {
                flash.error = "Failed to save document"
            }
        } else {
            flash.error = "Please upload a file"
        }

        redirect(controller: 'user', action: 'dashBoard')
    }


//save link fine
    def saveLink() {
        println(params)
        def topic = Topic.get(params.topicId)
        def linkResource = new LinkResource(
                url: params.url,
                description: params.description,
                topic: topic,
                owner: session.user
        )

        if (linkResource.save(flush: true)) {
            flash.message = "Link added successfully"
        } else {
            flash.error = "Failed to add link"
        }

        redirect(controller: 'user', action: 'dashBoard')
    }


}
