/*
 16_4. �����ͺ��̽��� �����ϰ� ���̺��� �����մϴ�.
 	   MySQL�� �����Ͽ� �����ͺ��̽� �̸� EerciseDB�� �����մϴ�.
 	     ��Ŭ�������� Data Source Explorer�� Database Connection�� �����Ͽ� Ŀ�ؼ� �̸��� Exercise_Conn,
 	     �����ͺ��̽� �̸��� ExerciseDB�� �����մϴ�.
 	   Student ���̺��� �����ϰ� ���ڵ带 �����մϴ�.
 */

	create table if not exists Student (
		num int not null,
		depart varchar(20),
		name varchar(30),
		address varchar(50),
		phone varchar(20),
		primary key(num)
	);
	
	insert into Student values ('2018100001','����ϰ�','ȫ���','�����','010-9002-1234');
	insert into Student values ('2018100002','����ϰ�','ȫ�浿','��⵵','010-2009-4321');
	insert into Student values ('2018200001','�����','������','��õ��','010-3910-0007');
	insert into Student values ('2018200002','�����','�����','�����','010-3002-0101');
	
	select * from Student;
	
	
	
