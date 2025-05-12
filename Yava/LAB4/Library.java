package LAB4;

import java.util.*;

public class Library {
    private List<Book> bookList;
    private Set<String> authorSet;
    private Map<String, Integer> authorCounter;

    public Library() {
        bookList = new ArrayList<>();
        authorSet = new HashSet<>();
        authorCounter = new HashMap<>();
    }

    public void addBook(Book book) {
        bookList.add(book);
        String author = book.getAuthor();
        authorSet.add(author);
        authorCounter.put(author, authorCounter.getOrDefault(author, 0) + 1);
    }

    public void removeBook(Book book) {
        if (bookList.remove(book)) {
            String author = book.getAuthor();
            int count = authorCounter.get(author);
            if (count == 1) {
                authorCounter.remove(author);
                authorSet.remove(author);
            } else {
                authorCounter.put(author, count - 1);
            }
        }
    }

    public List<Book> findBooksByAuthor(String author) {
        List<Book> result = new ArrayList<>();
        for (Book b : bookList) {
            if (b.getAuthor().equals(author)) {
                result.add(b);
            }
        }
        return result;
    }

    public List<Book> findBooksByYear(int year) {
        List<Book> result = new ArrayList<>();
        for (Book b : bookList) {
            if (b.getYear() == year) {
                result.add(b);
            }
        }
        return result;
    }

    public void printAllBooks() {
        System.out.println("Books:");
        for (Book b : bookList) {
            System.out.println(b.toString());
        }
    }

    public void printUniqueAuthors() {
        System.out.println("Authors: ");
        for (String a : authorSet) {
            System.out.println(a + " ");
        }
    }

    public void printAuthorsStatistics() {
        System.out.println("Statistics:");
        for (String a : authorSet) {
            System.out.println("Author: " + a + " Books amount: " + authorCounter.get(a));
        }
    }
}