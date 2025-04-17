package project

class DocumentResource extends ResourceTable {
    String filePath  // Store file path in DB, file itself on disk or blob store
    String originalFilename

    static constraints = {
        filePath nullable: false
        originalFilename nullable: false
    }
}


