package project

class TopicController {
def topicService


    def save() {
        def result = topicService.createTopic(params, session.user)

        if (result.success) {
            flash.message = "Topic created and subscribed successfully!"
            redirect( controller:'user', action: 'dashBoard')
        } else {
            flash.error = result.message
            redirect(controller:'user',action: 'dashBoard')

        }
    }
    def subscribeTopic(user){
        def res=Subscription.findByUser(session.user)
        render(view:'subscribeTopic',model:[topicId:res.topicId])
    }




}