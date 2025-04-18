package project

class Topic {

    String name
    Visibility visibility
    User owner

    static hasMany = [subscriptions: Subscription, resourcesTable: ResourceTable]
    static belongsTo = [owner: User]

    static constraints = {
        name unique: 'owner', nullable: false
        visibility nullable: false
    }
    static mapping = {
        resources cascade: 'all-delete-orphan'
    }
}

