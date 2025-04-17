package project

 abstract  class ResourceTable {
     String description
     User owner
     Topic topic
     Date dateCreated
     Date lastUpdated

     static constraints = {
         description nullable: false, blank: false
     }
}
