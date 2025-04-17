package project

import groovy.transform.CompileStatic

class TopicService {

    def createTopic(params, User user) {
        String name = params.name?.trim()
        Visibility visibility = params.visibility as Visibility

        if (!name) {
            return [success: false, message: "Topic name is required."]
        }

        if (Topic.findByNameAndOwner(name, user)) {
            return [success: false, message: "You already created a topic with this name."]
        }

        Topic topic = new Topic(name: name, visibility: visibility, owner: user)

        if (!topic.save(flush: true)) {
            return [success: false, message: "Failed to create topic."]
        }

        Subscription subscription = new Subscription(user: user, topic: topic, seriousness: Seriousness.VERY_SERIOUS)
        if (!subscription.save(flush: true)) {
            topic.delete()
            return [success: false, message: "Failed to subscribe user to topic."]
        }

        return [success: true, topic: topic]
    }
}