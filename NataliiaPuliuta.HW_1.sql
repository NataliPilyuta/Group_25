 --Вывести все поля и все строки. 
 Select * from students;
 --Вывести всех студентов в таблице.
 Select * from students;
 --Вывести только Id пользователей. 
 Select Id from students;
 --Вывести только имя пользователей.   
 Select name from students;
 -- Вывести только email пользователей. 
 Select email from students;
 -- Вывести имя и email пользователей.  
 Select name,email from students;
 --Вывести id, имя, email и дату создания пользователей. 
 Select Id,name,email,created_on from students;
 --Вывести пользователей где password 12333.  
 Select * from students where password = '12333';
 --Вывести пользователей которые были созданы 2021-03-26 00:00:00. 
 Select * from students where created_on = '2021-03-26 00:00:00.000';
 -- Вывести пользователей где в имени есть слово Анна. 
 Select * from students where name like '%Anna%';
 --Вывести пользователей где в имени в конце есть 8.
 Select * from students where name like '%8';
 -- Вывести пользователей где в имени в есть буква а. 
 Select * from students where name like '%a%';
 --Вывести пользователей которые были созданы 2021-07-12 00:00:00.
 Select * from students where created_on = '2021-07-12 00:00:00.000';
 -- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313. 
 Select * from students where created_on = '2021-07-12 00:00:00.000' and password = '1m313';
 -- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey.
 Select * from students where created_on = '2021-07-12 00:00:00.000' and name like 'Andrey%';
 -- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8.
 Select  elect * from students where created_on = '2021-07-12 00:00:00.000' and name like '%8%';
 -- Вывести пользователя у которых id равен 110.
 Select  (id) from students where Id=110;
 -- Вывести пользователя у которых id равен 153.
 Select id from students where Id=153;
 --Вывести пользователя у которых id больше 140.
 Select  id from students where Id>140;
 -- Вывести пользователя у которых id меньше 130.
 Select  id from students where Id<130;
 -- Вывести пользователя у которых id меньше 127 или больше 188.
 Select  id from students where Id<127 or Id>188;
 -- Вывести пользователя у которых id меньше либо равно 137.
 Select  * from students where Id <=137;
 --Вывести пользователя у которых id больше либо равно 137.
 Select  * from students where Id >=137;
 -- Вывести пользователя у которых id больше 180 но меньше 190.
 Select  * from students where Id>180 and Id<190;
 --Вывести пользователя у которых id между 180 и 190.
 Select  * from students where Id between 180 and 190;
 -- Вывести пользователей где password равен 12333, 1m313, 123313.
 Select  * from students where password in('12333','1m313','123313'); 
 -- Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00.
 Select  * from students where created_on in('2020-10-03 00:00:00.000','2021-05-19 00:00:00.000','2021-03-26 00:00:00.000');
 -- Вывести минимальный id.
 Select  min(Id) from students; 
 -- Вывести максимальный.
 Select  max(Id) from students; 
  --Вывести количество пользователей.
 Select  count(name) from students; 
-- Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
 Select  Id,name,created_on from students order by created_on;
 -- Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
 Select  Id,name,created_on from students order by  created_on desc;
 
 
 
