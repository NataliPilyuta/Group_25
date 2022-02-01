 --1.Вывести все поля и все строки. 
 Select * from students;
 --2.Вывести всех студентов в таблице.
 Select * from students;
 --3.Вывести только Id пользователей. 
 Select Id from students;
 --4.Вывести только имя пользователей.   
 Select name from students;
 -- 5.Вывести только email пользователей. 
 Select email from students;
 -- 6.Вывести имя и email пользователей.  
 Select name,email from students;
 --7.Вывести id, имя, email и дату создания пользователей. 
 Select Id,name,email,created_on from students;
 --8.Вывести пользователей где password 12333.  
 Select * from students where password = '12333';
 --9.Вывести пользователей которые были созданы 2021-03-26 00:00:00. 
 Select * from students where created_on = '2021-03-26 00:00:00.000';
 -- 10.Вывести пользователей где в имени есть слово Анна. 
 Select * from students where name like '%Anna%';
 --11.Вывести пользователей где в имени в конце есть 8.
 Select * from students where name like '%8';
 -- 12.Вывести пользователей где в имени в есть буква а. 
 Select * from students where name like '%a%';
 --13.Вывести пользователей которые были созданы 2021-07-12 00:00:00.
 Select * from students where created_on = '2021-07-12 00:00:00.000';
 -- 14.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313. 
 Select * from students where created_on = '2021-07-12 00:00:00.000' and password = '1m313';
 -- 15.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey.
 Select * from students where created_on = '2021-07-12 00:00:00.000' and name like '%Andrey%';
 -- 16.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8.
 Select * from students where created_on = '2021-07-12 00:00:00.000' and name like '%8%';
 -- 17.Вывести пользователя у которых id равен 110.
 Select (id) from students where Id=110;
 -- 18.Вывести пользователя у которых id равен 153.
 Select id from students where Id=153;
 --19.Вывести пользователя у которых id больше 140.
 Select id from students where Id>140;
 -- 20.Вывести пользователя у которых id меньше 130.
 Select  id from students where Id<130;
 -- 21.Вывести пользователя у которых id меньше 127 или больше 188.
 Select  id from students where Id<127 or Id>188;
 -- 22.Вывести пользователя у которых id меньше либо равно 137.
 Select  * from students where Id <=137;
 --23.Вывести пользователя у которых id больше либо равно 137.
 Select  * from students where Id >=137;
 -- 24.Вывести пользователя у которых id больше 180 но меньше 190.
 Select  * from students where Id>180 and Id<190;
 --25.Вывести пользователя у которых id между 180 и 190.
 Select  * from students where Id between 180 and 190;
 -- 26.Вывести пользователей где password равен 12333, 1m313, 123313.
 Select  * from students where password in('12333','1m313','123313'); 
 -- 27.Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00.
 Select  * from students where created_on in('2020-10-03 00:00:00.000','2021-05-19 00:00:00.000','2021-03-26 00:00:00.000');
 -- 28.Вывести минимальный id.
 Select  min(Id) from students; 
 -- 29.Вывести максимальный.
 Select  max(Id) from students; 
  --30.Вывести количество пользователей.
 Select  count(name) from students; 
  -- 31.Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
 Select  Id,name,created_on from students order by created_on;
  -- 32.Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
 Select  Id,name,created_on from students order by  created_on desc;
 
 
 
