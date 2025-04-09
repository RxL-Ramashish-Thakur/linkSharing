package project

class Rating {

    User user
    Resource resource
    int score

    static belongsTo = [user: User, resource: Resource]

    static constraints = {
        user nullable: false
        resource nullable: false
        score range: 1..5
    }
}