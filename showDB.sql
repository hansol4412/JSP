/*15_ 4.Student 테이블을 생성합니다.
  	  5.Student 테이블에 레코드를 삽입하여 결과를 확인하세요
  	  6.Student 테이블에 depart 필드 값이 '모바일과'인 레코드를 조회하여 결과를 확인하세요
  	  7.Student 테이블에서 depart 필드 값이 '모바일과'인 레코드를 모두 '컴퓨터과'로 변경하여 결과를 확인하세요
  	  8.Student 테이블에서 depart 필드 값이 '영어과'인 레코드를 삭제하여 결과를 확인하세요. */

/*
 	15_4.
 	create table if not exists Student(
		num int not null,
		depart varchar(20),
		name varchar(30),
		address varchar(50),
		phone varchar(20),
		primary key(num)
	);
	
	15_5.
	insert into Student values ('2018100001','모바일과','홍길순','서울시','010-9002-1234');
	insert into Student values ('2018100002','모바일과','홍길동','경기도','010-2009-4321');
	insert into Student values ('2018200001','영어과','수여인','인천시','010-3910-0007');
	insert into Student values ('2018200002','영어과','김다은','서울시','010-3002-0101');
	
	15_6.
	select * from Student where depart ="모바일과";
	
	15_7.
	update Student set depart="컴퓨터과" where depart="모바일과";
	
	15_8.
	delete from Student where depart="영어과"; 
	
	
*/
	
	
	select * from Student;






