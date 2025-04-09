package project

class Resource {

    String description
    ResourceType resourceType
    String link
    byte[] document
    User creator
    Topic topic

    static belongsTo = [creator: User, topic: Topic]

    static constraints = {
        description nullable: false
        resourceType nullable: false
        link nullable: true
        document nullable: true
        creator nullable: false
        topic nullable: false
    }
}
enum ResourceType {
    LINK, DOCUMENT
}