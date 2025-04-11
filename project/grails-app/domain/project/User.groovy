package project

class User {
    String userName
    String firstName
    String lastName
    String email
    String password
    byte[] photo
    Date lastUpadated
    Date dateCreated
    boolean active = true  // Indicates whether the user is active or not
    static hasMany = [invitesSent: Invite, invitesReceived: Invite, ratings: Rating, resources: Resource, subscriptions: Subscription, topics: Topic]

    static constraints = {
        auto timeStamp:true
        userName nullable: false, blank: false, unique: true
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        email nullable: false, blank: false, email: true, unique: true
        password nullable: false, blank: false
        active nullable: false
        //photo nullable: true, maxSize: 10485760
    }

    static mapping = {
        table 'user_table'
    }
}