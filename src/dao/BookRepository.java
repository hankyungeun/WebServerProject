package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public BookRepository() {
		Book ring = new Book("0001", "ring", 199999);
		ring.setDescription("I'm a product detail. I'm a great place to add more information about your product such as sizing, material, care and cleaning instructions. This is also a great space to write what makes this product special and how your customers can benefit from this item. Buyers like to know what they’re getting before they purchase, so give them as much information as possible so they can buy with confidence and certainty.");
		ring.setFilename("B1234.png");
		
		Book necklace = new Book("0002", "necklace", 29900);
		necklace.setDescription("I'm a product detail. I'm a great place to add more information about your product such as sizing, material, care and cleaning instructions. This is also a great space to write what makes this product special and how your customers can benefit from this item. Buyers like to know what they’re getting before they purchase, so give them as much information as possible so they can buy with confidence and certainty.");
		necklace.setFilename("B1235.png");
		
		Book earring = new Book("0003", "earring", 259000);
		earring.setDescription("I'm a product detail. I'm a great place to add more information about your product such as sizing, material, care and cleaning instructions. This is also a great space to write what makes this product special and how your customers can benefit from this item. Buyers like to know what they’re getting before they purchase, so give them as much information as possible so they can buy with confidence and certainty.");
		earring.setFilename("B1236.png");
		
		Book necklace2 = new Book("0004", "necklace2", 279000);
		necklace2.setDescription("I'm a product detail. I'm a great place to add more information about your product such as sizing, material, care and cleaning instructions. This is also a great space to write what makes this product special and how your customers can benefit from this item. Buyers like to know what they’re getting before they purchase, so give them as much information as possible so they can buy with confidence and certainty.");
		necklace2.setFilename("B1237.png");
		
		Book earring2 = new Book("0005", "earring2", 399900);
		earring2.setDescription("I'm a product detail. I'm a great place to add more information about your product such as sizing, material, care and cleaning instructions. This is also a great space to write what makes this product special and how your customers can benefit from this item. Buyers like to know what they’re getting before they purchase, so give them as much information as possible so they can buy with confidence and certainty.");
		earring2.setFilename("B1238.png");
		
		Book bracelet = new Book("0006", "bracelet", 590000);
		bracelet.setDescription("I'm a product detail. I'm a great place to add more information about your product such as sizing, material, care and cleaning instructions. This is also a great space to write what makes this product special and how your customers can benefit from this item. Buyers like to know what they’re getting before they purchase, so give them as much information as possible so they can buy with confidence and certainty.");
		bracelet.setFilename("B1239.png");
		
		listOfBooks.add(ring);
		listOfBooks.add(necklace);
		listOfBooks.add(earring);
		listOfBooks.add(necklace2);
		listOfBooks.add(earring2);
		listOfBooks.add(bracelet);
	}
	
	public ArrayList<Book>getAllBooks(){
		return listOfBooks;
	}
	
	public Book getBookById(String bookId) {
		Book BookBYId = null;
		
		for ( int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if(book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				BookBYId = book;
				break;
			}
		}
		return BookBYId;
	}
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
}
