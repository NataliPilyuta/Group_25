 --������� ��� ���� � ��� ������. 
 Select * from students;
 --������� ���� ��������� � �������.
 Select * from students;
 --������� ������ Id �������������. 
 Select Id from students;
 --������� ������ ��� �������������.   
 Select name from students;
 -- ������� ������ email �������������. 
 Select email from students;
 -- ������� ��� � email �������������.  
 Select name,email from students;
 --������� id, ���, email � ���� �������� �������������. 
 Select Id,name,email,created_on from students;
 --������� ������������� ��� password 12333.  
 Select * from students where password = '12333';
 --������� ������������� ������� ���� ������� 2021-03-26 00:00:00. 
 Select * from students where created_on = '2021-03-26 00:00:00.000';
 -- ������� ������������� ��� � ����� ���� ����� ����. 
 Select * from students where name like '%Anna%';
 --������� ������������� ��� � ����� � ����� ���� 8.
 Select * from students where name like '%8';
 -- ������� ������������� ��� � ����� � ���� ����� �. 
 Select * from students where name like '%a%';
 --������� ������������� ������� ���� ������� 2021-07-12 00:00:00.
 Select * from students where created_on = '2021-07-12 00:00:00.000';
 -- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313. 
 Select * from students where created_on = '2021-07-12 00:00:00.000' and password = '1m313';
 -- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey.
 Select * from students where created_on = '2021-07-12 00:00:00.000' and name like 'Andrey%';
 -- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8.
 Select  elect * from students where created_on = '2021-07-12 00:00:00.000' and name like '%8%';
 -- ������� ������������ � ������� id ����� 110.
 Select  (id) from students where Id=110;
 -- ������� ������������ � ������� id ����� 153.
 Select id from students where Id=153;
 --������� ������������ � ������� id ������ 140.
 Select  id from students where Id>140;
 -- ������� ������������ � ������� id ������ 130.
 Select  id from students where Id<130;
 -- ������� ������������ � ������� id ������ 127 ��� ������ 188.
 Select  id from students where Id<127 or Id>188;
 -- ������� ������������ � ������� id ������ ���� ����� 137.
 Select  * from students where Id <=137;
 --������� ������������ � ������� id ������ ���� ����� 137.
 Select  * from students where Id >=137;
 -- ������� ������������ � ������� id ������ 180 �� ������ 190.
 Select  * from students where Id>180 and Id<190;
 --������� ������������ � ������� id ����� 180 � 190.
 Select  * from students where Id between 180 and 190;
 -- ������� ������������� ��� password ����� 12333, 1m313, 123313.
 Select  * from students where password in('12333','1m313','123313'); 
 -- ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00.
 Select  * from students where created_on in('2020-10-03 00:00:00.000','2021-05-19 00:00:00.000','2021-03-26 00:00:00.000');
 -- ������� ����������� id.
 Select  min(Id) from students; 
 -- ������� ������������.
 Select  max(Id) from students; 
  --������� ���������� �������������.
 Select  count(name) from students; 
-- ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
 Select  Id,name,created_on from students order by created_on;
 -- ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
 Select  Id,name,created_on from students order by  created_on desc;
 
 
 
