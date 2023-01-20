// import Book "book";
import Text "mo:base/Text";
module Book{
    public type Book = {
        title: Text;
        pages: Nat;
    };
    func create_book(til: Text, pag: Nat): Book{
        return(
            {title= til; pages= pag}
        );
    };
}
