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
    def myTopics() {
        if (!session.user) {
            redirect(controller: 'user', action: 'login')
            return
        }

        int max = params.int('max') ?: 2   // 2 topics per page
        int offset = params.int('offset') ?: 0

        def topics = Topic.findAllByOwner(session.user, [max: max, offset: offset])
        def total = Topic.countByOwner(session.user)

        render(view: 'myTopics', model: [myTopics: topics, topicTotal: total])
    }





}