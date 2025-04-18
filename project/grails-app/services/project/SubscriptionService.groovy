import project.Seriousness
import project.Subscription
import project.User

class SubscriptionService {


    def subscribeUnsubscribe(def topic, def user) {
        if (!topic || !user) {
            return [error: "Invalid topic or user"]
        }

        Subscription subscription = Subscription.findByUserAndTopic(user, topic)

        if (!subscription) {
            // Subscribe
            subscription = new Subscription(
                    user: user,
                    topic: topic,
                    seriousness: Seriousness.VERY_SERIOUS // or whatever default you want
            )
            if (subscription.save(flush: true, failOnError: true)) {
                return [status: "subscribed"]
            } else {
                return [error: "Failed to subscribe", errors: subscription.errors]
            }
        } else {
            // Unsubscribe
            subscription.delete(flush: true)
            return [status: "unsubscribed"]
        }
    }
}

