package project

class LinkResource extends ResourceTable {
    String url

    static constraints = {
        url nullable: false
    }
}


