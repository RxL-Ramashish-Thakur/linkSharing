package project
// grails-app/services/project/DashboardService.groovy
class DashboardService {

    def getDashboardModel(User user) {
        def topics = Topic.findAllByOwner(user)
        def subscriptionCount = Subscription.countByUser(user) ?: 0
        def topicCount = Topic.countByOwner(user) ?: 0
        def subscriptions = Subscription.findAllByUser(user)

        def grouped = Subscription.createCriteria().list {
            projections {
                groupProperty("topic")
                count("id", "subCount")
            }
            order("subCount", "desc")
            maxResults(1)
        }

        def mostSubscribedTopic = grouped ? grouped[0][0] : null
        def mostSubscriptions = mostSubscribedTopic ? Subscription.findAllByTopic(mostSubscribedTopic) : []

        return [
                user               : user,
                myTopics           : topics,
                subscriptionCount  : subscriptionCount,
                topicCount         : topicCount,
                subscriptions      : subscriptions,
                mostSubscriptions  : mostSubscriptions
        ]
    }
}
