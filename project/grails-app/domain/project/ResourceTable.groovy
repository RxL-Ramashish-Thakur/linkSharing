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


//class LinkResource extends ResourceTable {
//    String url
//
//    static constraints = {
//        url nullable: false
//    }
//}

//class DocumentResource extends ResourceTable {
//    String filePath  // Store file path in DB, file itself on disk or blob store
//    String originalFilename
//
//    static constraints = {
//        filePath nullable: false
//        originalFilename nullable: false
//    }
//}