package dto;

import java.io.Serializable;

public class Book implements Serializable {
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String bookId;		//���� ���̵�
	private String name;		//������
	private Integer unitPrice;	//����
	private String dsecription;	//����
	private String filename;
	private int quantity;

	public Book() {
		super();
	}

	public Book(String bookId, String name, Integer unitPrice) {
		this.bookId = bookId;
		this.name = name;
		this.unitPrice = unitPrice;
	}
	
	public String getBookId() {
		return bookId;
	}
	
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String bookId) {
		this.name = name;
	}
	
	public Integer getUnitPrice() {
		return unitPrice;
	}
	
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public String getDescription() {
		return dsecription;
	}
	
	public void setDescription(String description) {
		this.dsecription = description;
	}
	
	
	public String getFilename() {
		return filename;
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}

