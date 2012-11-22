package org.example

class Book {

    String author
    String title

    static constraints = {
        title(blank: false)
        author(blank: false)
    }
}
