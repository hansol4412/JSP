/*15_ 4.Student ���̺��� �����մϴ�.
  	  5.Student ���̺� ���ڵ带 �����Ͽ� ����� Ȯ���ϼ���
  	  6.Student ���̺� depart �ʵ� ���� '����ϰ�'�� ���ڵ带 ��ȸ�Ͽ� ����� Ȯ���ϼ���
  	  7.Student ���̺��� depart �ʵ� ���� '����ϰ�'�� ���ڵ带 ��� '��ǻ�Ͱ�'�� �����Ͽ� ����� Ȯ���ϼ���
  	  8.Student ���̺��� depart �ʵ� ���� '�����'�� ���ڵ带 �����Ͽ� ����� Ȯ���ϼ���. */

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
	insert into Student values ('2018100001','����ϰ�','ȫ���','�����','010-9002-1234');
	insert into Student values ('2018100002','����ϰ�','ȫ�浿','��⵵','010-2009-4321');
	insert into Student values ('2018200001','�����','������','��õ��','010-3910-0007');
	insert into Student values ('2018200002','�����','�����','�����','010-3002-0101');
	
	15_6.
	select * from Student where depart ="����ϰ�";
	
	15_7.
	update Student set depart="��ǻ�Ͱ�" where depart="����ϰ�";
	
	15_8.
	delete from Student where depart="�����"; 
	
	
*/
	
	
	select * from Student;






