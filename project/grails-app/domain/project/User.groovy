package project

class User {

    String firstName
    String lastName
    String email
    String password
    byte[] photo
    Date lastUpdated
    Date dateCreated
    boolean active = true  // Indicates whether the user is active or not
    static hasMany = [invitesSent: Invite, invitesReceived: Invite, ratings: Rating, resourcesTable: ResourceTable, subscriptions: Subscription, topics: Topic]

    static constraints = {
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        email nullable: false, blank: false, email: true, unique: true
        password nullable: false, blank: false
        photo nullable: true, maxSize: 10485760
    }
    static mapping = {
        table 'user_table'
    }
}