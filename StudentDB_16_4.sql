/*
 16_4. 데이터베이스를 연결하고 테이블을 생성합니다.
 	   MySQL에 접속하여 데이터베이스 이름 EerciseDB를 생성합니다.
 	     이클립스에서 Data Source Explorer의 Database Connection를 선택하여 커넥션 이름은 Exercise_Conn,
 	     데이터베이스 이름은 ExerciseDB러 생성합니다.
 	   Student 테이블을 생성하고 레코드를 삽입합니다.
 */

	create table if not exists Student (
		num int not null,
		depart varchar(20),
		name varchar(30),
		address varchar(50),
		phone varchar(20),
		primary key(num)
	);
	
	insert into Student values ('2018100001','모바일과','홍길순','서울시','010-9002-1234');
	insert into Student values ('2018100002','모바일과','홍길동','경기도','010-2009-4321');
	insert into Student values ('2018200001','영어과','수여인','인천시','010-3910-0007');
	insert into Student values ('2018200002','영어과','김다은','서울시','010-3002-0101');
	
	select * from Student;
	
	
	
