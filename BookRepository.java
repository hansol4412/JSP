package dao;
import java.util.ArrayList;
import dto.Book;
public class BookRepository {
	public ArrayList<Book> getAllBooks(){
		return listOfBooks;
	}
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public BookRepository() {
		Book html = new Book("B1234", "HTML5+CSS3", 15000);
		html.setCategory("Hello Coding");
		html.setDescription("���峪 PPT ������ ���� �� �ֳ���? �׷��� ���� �����ϴ�. ���� �ٷ� �������� ���ۿ� "
				+ "������ ������. ���� ���� ��ǻ�Ͱ� ��� �������ϴ�. �ڵ�� ���� ȭ���� �ٷ� ������ ����...");
		html.setAuthor("Ȳ��ȣ");
		html.setPublisher("�Ѻ��̵��");
		html.setUnitsInstock(1000);
		html.setReleaseDate("2013-03");
		html.setTotalPages(283);
		html.setFilename("B1234.jpg");
		
		
		Book java = new Book("B1235", "���� ���� �ڹ� ���α׷���", 27000);
		java.setCategory("IT �����");
		java.setDescription("��ü ������ �ٽɰ� �ڹ��� ������ ����� ����� �ٷ�鼭�� �ʺ��ڰ� ���� �н��� �� �ְ� "
				+ "�����߽��ϴ�. �ð�ȭ ������ Ȱ���� ���� ����� �������� ���� �ٽ� �ڵ带 ���� ����� ����...");
		java.setAuthor("������");
		java.setPublisher("�Ѻ� ��ī����");
		java.setUnitsInstock(500);
		java.setReleaseDate("2015-09");
		java.setTotalPages(368);
		java.setFilename("B1235.jpg");
		
		Book spring = new Book("B1236", "������4 �Թ�", 27000);
		spring.setCategory("IT �����");
		spring.setDescription("�������� �ܼ��� ��� ����� ������ �ͺ��� ��Ű���ĸ� ��� �����ϰ� ���������� "
				+ "�� �߿��մϴ�. ������ ������ �ٿ����� �����δ� ���� ���߿��� �������� ����� ������ �� �����ϴ�.");
		spring.setPublisher("�Ѻ��̵��");
		spring.setAuthor("�ϼ���� ����ġ, ������ ��Ÿ��, ��Ű ������ (����ö, ���μ�)" );
		spring.setUnitsInstock(1000);
		spring.setReleaseDate("2018-11");
		spring.setTotalPages(698);
		spring.setFilename("B1236.jpg");
		
		
		listOfBooks.add(html);
		listOfBooks.add(java);
		listOfBooks.add(spring);
	}
	
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
	
	public Book getBookById(String bookId) {
		Book bookById = null;
		for(int i=0; i<listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if(book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}
	
	
	
	
}
