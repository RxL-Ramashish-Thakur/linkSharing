package project

class Invite {
    User sender
    User recipient
    Topic topic

    static belongsTo = [sender: User, recipient: User, topic: Topic]

    static constraints = {
        sender nullable: false
        recipient nullable: false
        topic nullable: false
    }
}