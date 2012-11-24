package org.example

class HelloController {

    def index() {
    }

    def home() {
        render "<h1>real programmers</h1>"
    }

    def random() {
        def books = Book.list()
        def rndbook
        if (books.size()) {
            rndbook = books[new Random().nextInt(books.size())]
        } else {
            rndbook = new Book(author: "author", title: "title")
        }
        [ book: rndbook]
    }
}
