package LAB4;

public class Main {
    private static Library libraryInstance;

    public static void main(String[] args) {
        libraryInstance = new Library();
        runTests();
    }

    private static void runTests() {
        Book b1 = createAndAddBook("Book1", "Author1", 1);
        Book b2 = createAndAddBook("Book2", "Author1", 2);
        Book b3 = createAndAddBook("Book3", "Author1", 1);
        Book b4 = createAndAddBook("Book4", "Author2", 2);
        Book b5 = createAndAddBook("Book5", "Author2", 1);
        Book b6 = createAndAddBook("Book6", "Author2", 2);

        displayBooksByYear(1);
        displayBooksByYear(2);
        displayBooksByAuthor("Author1");
        displayBooksByAuthor("Author2");

        showLibraryInfo();

        removeAndShow(b6);
        removeAndShow(b3);
        removeAndShow(b2);
        removeAndShow(b1);
        removeAndShow(b4);
        removeAndShow(b5);
    }

    private static Book createAndAddBook(String title, String author, int year) {
        Book book = new Book(title, author, year);
        libraryInstance.addBook(book);
        return book;
    }

    private static void displayBooksByYear(int year) {
        System.out.println("Books by Year " + year + ":");
        for (Book b : libraryInstance.findBooksByYear(year)) {
            System.out.println(b.toString());
        }
    }

    private static void displayBooksByAuthor(String author) {
        System.out.println("Books by Author " + author + ":");
        for (Book b : libraryInstance.findBooksByAuthor(author)) {
            System.out.println(b.toString());
        }
    }

    private static void showLibraryInfo() {
        libraryInstance.printAllBooks();
        libraryInstance.printAuthorsStatistics();
        libraryInstance.printUniqueAuthors();
    }

    private static void removeAndShow(Book book) {
        libraryInstance.removeBook(book);
        showLibraryInfo();
    }
}