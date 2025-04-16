package project

class ReadingItem {
    // this is any extra domain class i have made
    User user
   ResourceTable resourceTable
    boolean isRead = false

    static belongsTo = [user: User, resourceTable: ResourceTable]

    static constraints = {
        user nullable: false
        resourceTable nullable: false
        isRead nullable: false
    }

    static mapping = {
        table 'reading_item'
    }
}