package project
// grails-app/services/project/DashboardService.groovy
class DashboardService {

    def getDashboardModel(User user) {
        def myTopics = Topic.findAllByOwner(user)
        def subscriptionCount = Subscription.countByUser(user) ?: 0
        def topicCount = Topic.countByOwner(user) ?: 0
        def mySubscribeTopics = Subscription.findAllByUser(user)

        def results = Subscription.createCriteria().list {
                projections {
                    groupProperty("topic") // Group by Topic
                    count("id", 'subscriberCount') // Count of subscriptions
                }
                order("subscriberCount", "desc") // Order by count descending
                maxResults(5) // Limit to top 5
            }
            // Extract Topic instances from results
        List<Topic> trendingTopics = results.collect { it[0] }
        def publicTopics = Topic.findAllByVisibility(Visibility.PUBLIC)
        println(mySubscribeTopics: mySubscribeTopics)



        return [
                user               : user,
                myTopics           : myTopics,
                subscriptionCount  : subscriptionCount,
                topicCount         : topicCount,
                mySubscribeTopics:mySubscribeTopics,
                trendingTopics     : trendingTopics,
               publicTopics:publicTopics
        ]
    }

}
