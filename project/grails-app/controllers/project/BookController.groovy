package project
import project.Book

class BookController {

    static scaffold = Book
    def action1(){
        render(view:'action1')
    }
}