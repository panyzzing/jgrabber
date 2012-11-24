package org.example

class Book {

    String isbn
    String title

    static constraints = {
        title(blank: false)
        isbn(blank: false)
    }
}
