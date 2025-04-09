package project

class Topic {

    String name
    Visibility visibility
    User owner

    static hasMany = [subscriptions: Subscription, resources: Resource]
    static belongsTo = [owner: User]

    static constraints = {
        name unique: 'owner', nullable: false
        visibility nullable: false
    }
}
enum Visibility {
    PUBLIC, PRIVATE
}