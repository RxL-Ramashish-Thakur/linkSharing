package project

class ReadingItem {
    User user
    Resource resource
    boolean isRead = false

    static belongsTo = [user: User, resource: Resource]

    static constraints = {
        user nullable: false
        resource nullable: false
        isRead nullable: false
    }

    static mapping = {
        table 'reading_item'
    }
}