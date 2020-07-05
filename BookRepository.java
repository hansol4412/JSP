package dao;
import java.util.ArrayList;
import dto.Book;

public class BookRepository {
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	
	public ArrayList<Book> getAllBooks(){
		return listOfBooks;
	}
	
	public BookRepository() {
		Book html = new Book("B1234", "HTMl+CSS3", 15000);
		html.setCategory("Hello Coding");
		html.setDescription("���峪 PPT ������ ���� �� �ֳ���? �׷��� ���� �����ϴ�. ���� �ٷ� �������� ���ۿ�"
				+ "������ ������. ���� ���� ��ǻ�Ͱ� ��� �������ϴ�. �ڵ�� ����ȭ���� �ٷ� ������ ����...");
		html.setAuthor("Ȳ��ȣ");
		html.setPublisher("�Ѻ��̵��");
		
		Book java = new Book("B1235", "���� ���� �ڹ� ���α׷���", 27000);
		java.setCategory("IT �����");
		java.setDescription("��ü ������ �ٽɰ� �ڹ��� ������ ����� ����� �ٷ�鼭�� �ʺ��ڰ� ���� �н��� ��"
				+ "�ְ� �����߽��ϴ�. �ð�ȭ ������ Ȱ���� ���� ����� �������� ���� �ٽ� �ڵ带 ���� ����� ����...");
		java.setAuthor("������");
		java.setPublisher("�Ѻ��̵��");
		
		Book spring = new Book("B1236", "������4 �Թ�", 27000);
		spring.setCategory("IT �����");
		spring.setDescription("�������� �ܼ��� ��� ����� ������ �ͺ��� ��Ű���ĸ� ��� �����ϰ� �����ϴ�����"
				+ "�� �߿��մϴ�. ������ ������ �ٿ��ִ� �����δ� ���� ���߿��� �������� ����� Ȱ���� �� �����ϴ� ...");
		spring.setAuthor("�ϼ����� ����ġ, ������ ��Ÿ��, ��� ������ (����ö, ���μ�)");
		spring.setPublisher("�Ѻ��̵��");
		
		listOfBooks.add(html);
		listOfBooks.add(java);
		listOfBooks.add(spring);
		
		
	}
	
}
