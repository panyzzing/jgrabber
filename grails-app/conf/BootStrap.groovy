import org.example.Book

class BootStrap {

    def init = { servletContext ->
        // check whether test already exists
        if (!Book.count()) {
            new Book(author: "Stephen King", title: "Hello world").save(failOnError: true)
            new Book(author: "Gang of Four", title: "Design Patterns").save(failOnError: true)
        }
    }
    def destroy = {
    }
}
