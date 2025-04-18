package project
class Subscription {

    User user
    Topic topic
    Seriousness seriousness

    static belongsTo = [user: User, topic: Topic]

    static constraints = {
        user nullable: false
        topic nullable: false
        seriousness nullable: true
    }

}

