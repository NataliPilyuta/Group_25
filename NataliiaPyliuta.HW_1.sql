 --1.������� ��� ���� � ��� ������. 
 Select * from students;
 --2.������� ���� ��������� � �������.
 Select * from students;
 --3.������� ������ Id �������������. 
 Select Id from students;
 --4.������� ������ ��� �������������.   
 Select name from students;
 -- 5.������� ������ email �������������. 
 Select email from students;
 -- 6.������� ��� � email �������������.  
 Select name,email from students;
 --7.������� id, ���, email � ���� �������� �������������. 
 Select Id,name,email,created_on from students;
 --8.������� ������������� ��� password 12333.  
 Select * from students where password = '12333';
 --9.������� ������������� ������� ���� ������� 2021-03-26 00:00:00. 
 Select * from students where created_on = '2021-03-26 00:00:00.000';
 -- 10.������� ������������� ��� � ����� ���� ����� ����. 
 Select * from students where name like '%Anna%';
 --11.������� ������������� ��� � ����� � ����� ���� 8.
 Select * from students where name like '%8';
 -- 12.������� ������������� ��� � ����� � ���� ����� �. 
 Select * from students where name like '%a%';
 --13.������� ������������� ������� ���� ������� 2021-07-12 00:00:00.
 Select * from students where created_on = '2021-07-12 00:00:00.000';
 -- 14.������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313. 
 Select * from students where created_on = '2021-07-12 00:00:00.000' and password = '1m313';
 -- 15.������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey.
 Select * from students where created_on = '2021-07-12 00:00:00.000' and name like '%Andrey%';
 -- 16.������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8.
 Select * from students where created_on = '2021-07-12 00:00:00.000' and name like '%8%';
 -- 17.������� ������������ � ������� id ����� 110.
 Select (id) from students where Id=110;
 -- 18.������� ������������ � ������� id ����� 153.
 Select id from students where Id=153;
 --19.������� ������������ � ������� id ������ 140.
 Select id from students where Id>140;
 -- 20.������� ������������ � ������� id ������ 130.
 Select  id from students where Id<130;
 -- 21.������� ������������ � ������� id ������ 127 ��� ������ 188.
 Select  id from students where Id<127 or Id>188;
 -- 22.������� ������������ � ������� id ������ ���� ����� 137.
 Select  * from students where Id <=137;
 --23.������� ������������ � ������� id ������ ���� ����� 137.
 Select  * from students where Id >=137;
 -- 24.������� ������������ � ������� id ������ 180 �� ������ 190.
 Select  * from students where Id>180 and Id<190;
 --25.������� ������������ � ������� id ����� 180 � 190.
 Select  * from students where Id between 180 and 190;
 -- 26.������� ������������� ��� password ����� 12333, 1m313, 123313.
 Select  * from students where password in('12333','1m313','123313'); 
 -- 27.������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00.
 Select  * from students where created_on in('2020-10-03 00:00:00.000','2021-05-19 00:00:00.000','2021-03-26 00:00:00.000');
 -- 28.������� ����������� id.
 Select  min(Id) from students; 
 -- 29.������� ������������.
 Select  max(Id) from students; 
  --30.������� ���������� �������������.
 Select  count(name) from students; 
  -- 31.������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
 Select  Id,name,created_on from students order by created_on;
  -- 32.������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
 Select  Id,name,created_on from students order by  created_on desc;
 
 
 
