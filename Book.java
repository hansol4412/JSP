package dto;
import java.io.Serializable;
public class Book implements java.io.Serializable{

	private static final long serialVersionUID = -4274700572038677000L;
	
	private String bookId;			//���� ���̵�
	private String bname;			//������
	private Integer unitPrice;		//����
	private String author;			//����
	private String description;		//����
	private String publisher;		//���ǻ�
	private String category;		//�з�
	private long unitsInstock;		//��� ��
	private long totalPages;		//������ ��
	private String releaseDate;		//������
	private String condition;		//�ű� ���� or �߰� ���� or E-book
	private String filename;
	
	public Book() {
		super();
	}

	public Book(String bookId, String bname, Integer unitPrice) {
		super();
		this.bookId = bookId;
		this.bname = bname;
		this.unitPrice = unitPrice;
	}

	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInstock() {
		return unitsInstock;
	}

	public void setUnitsInstock(long unitsInstock) {
		this.unitsInstock = unitsInstock;
	}

	public long getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(long totalPages) {
		this.totalPages = totalPages;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	

}
