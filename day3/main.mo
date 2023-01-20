import Book "book";
import List "mo:base/List";

actor{
    type Book = Book.Book;

    var bookStore = List.nil<Book>();

    public func add_book(b: Book) : async (){
        bookStore := List.push<Book>(b, bookStore);
    };
    public query func get_books(): async [Book]{
        return List.toArray<Book>(bookStore)
    }
}