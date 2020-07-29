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
		html.setDescription("워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 "
				+ "도전해 보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으...");
		html.setAuthor("황재호");
		html.setPublisher("한빛미디어");
		html.setUnitsInstock(1000);
		html.setReleaseDate("2013-03");
		html.setTotalPages(283);
		html.setFilename("B1234.jpg");
		
		
		Book java = new Book("B1235", "쉽게 배우는 자바 프로그래밍", 27000);
		java.setCategory("IT 모바일");
		java.setDescription("객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게 "
				+ "구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현...");
		java.setAuthor("우종증");
		java.setPublisher("한빛 아카데미");
		java.setUnitsInstock(500);
		java.setReleaseDate("2015-09");
		java.setTotalPages(368);
		java.setFilename("B1235.jpg");
		
		Book spring = new Book("B1236", "스프링4 입문", 27000);
		spring.setCategory("IT 모바일");
		spring.setDescription("스프링은 단순히 사용 방법만 익히는 것보다 아키텍쳐를 어떻게 이해하고 설계하지가 "
				+ "더 중요합니다. 예제를 복사해 붙여놓는 식으로는 실제 개발에서 스프링을 제대로 이해할 수 없습니다.");
		spring.setPublisher("한빛미디어");
		spring.setAuthor("하세기와 유이치, 오오노 와타루, 토키 코헤이 (권은철, 전민수)" );
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
