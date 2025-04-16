package project

class Rating {

    User user
    ResourceTable resourceTable
    Integer score

    static belongsTo = [user: User, resourceTable: ResourceTable]

    static constraints = {
        user nullable: false
        resourceTable nullable: false
        score range: 1..5
    }
}