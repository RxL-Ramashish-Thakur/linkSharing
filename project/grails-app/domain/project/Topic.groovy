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

//class Topic {
//    String name
//    User owner
//    Visibility visibility
//    Date dateCreated
//    Date lastUpdated
//
//    static hasMany = [resources: ResourceTable]  // Add this line
//
//    static mapping = {
//        resources cascade: 'all-delete-orphan'
//    }
//}