package project

class TopicController {
    def topicService
    def DashboardService
    def subscriptionService


    def subscribeUnsubscribe() {
        User currentUser = session.user
        if (!currentUser) {
            redirect(controller: 'user', action: 'home')
            return
        }
        def topic=Topic.findById(params.topicId)
       def result=subscriptionService.subscribeUnsubscribe(topic,currentUser)
        flash.message = result.status ?: result.error
        redirect(controller: 'user', action: 'dashBoard')
    }





    def save() {
        def result = topicService.createTopic(params, session.user)
        if (result.success) {
            flash.message = "Topic created and subscribed successfully!"
            redirect(controller: 'user', action: 'dashBoard')
        } else {
            flash.error = result.message
            redirect(controller: 'user', action: 'dashBoard')

        }
    }

    def myTopics() {
        if (!session.user) {
            redirect(controller: 'user', action: 'home')
            return
        }


        def user = session.user
        int max = params.int('max') ?: 2
        int offset = params.int('offset') ?: 0

        def myTopics = Topic.findAllByOwner(session.user, [max: max, offset: offset])
        def total = Topic.countByOwner(session.user)

        render(view: 'myTopics', model: [
                myTopics  : myTopics,
                topicTotal: total,
                max       : max,
                offset    : offset,
                user      : user
        ])
    }

    def subscribeTopic() {
        if (!session.user) {
            redirect(controller: 'user', action: 'home')
            return
        }

        def user = session.user
        int max = params.int('max') ?: 2
        int offset = params.int('offset') ?: 0

        def subscriptions = Subscription.createCriteria().list(max: max, offset: offset) {
            eq('user', user)
        }

        def subscriptionCount = Subscription.countByUser(user)
        def dashboardModel = DashboardService.getDashboardModel(session.user)
        def myTopics = dashboardModel.myTopics;
        render(view: 'subscribeTopic', model: [
                subscriptions    : subscriptions,
                subscriptionCount: subscriptionCount,
                max              : max,
                offset           : offset,
                params           : params,
                myTopics         : myTopics,
                user             : user

        ])
    }


}