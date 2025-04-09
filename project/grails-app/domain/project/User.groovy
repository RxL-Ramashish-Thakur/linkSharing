package project

class User {
    String username
    String firstName
    String lastName
    String email
    String password
    boolean active = true  // Indicates whether the user is active or not

    static hasMany = [invitesSent: Invite, invitesReceived: Invite, ratings: Rating, resources: Resource, subscriptions: Subscription, topics: Topic]

    static constraints = {
        username nullable: false, blank: false, unique: true
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        email nullable: false, blank: false, email: true, unique: true
        password nullable: false, blank: false
        active nullable: false
    }

    static mapping = {
        table 'user_table'
    }
}