pub contract LibraryContract {
    pub var Books: {String: Book}

    pub struct Book {
        pub let Title: String
        pub let Author: String
        pub let YearPublished: Int

        init(_Title: String, _Author: String, _YearPublished: Int) {
            self.Title = _Title
            self.Author = _Author
            self.YearPublished = _YearPublished
        }
    }

    pub fun addBook(Title: String, Author: String, YearPublished: Int) {
        let newBook = Book(_Title: Title, _Author: Author, _YearPublished: YearPublished)
        self.Books[Title] = newBook
    }

    init() {
        self.Books = {}
    }
}
