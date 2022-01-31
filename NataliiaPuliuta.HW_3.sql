  --Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
  select employee_name, monthly_salary from employee_salary es 
  join employees e on e.id=es.employee_id 
  join salary s on s.id=es.salary_id 
  where monthly_salary is not null;
 
  --Вывести всех работников у которых ЗП меньше 2000.
  select employee_name e from employee_salary es
  join salary s on es.salary_id=s.id
  join employees e on es.employee_id=e.id
  where monthly_salary<2000;
 
  --Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает).
 select monthly_salary from salary s  
 left join employee_salary es on s.id=es.salary_id
 where employee_id is null;

  --Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает).
 select monthly_salary from salary s  
 left join employee_salary es on s.id=es.salary_id
 where monthly_salary<2000 and employee_id is null;

  --Найти всех работников кому не начислена ЗП.
select employee_name from employees e
left join employee_salary es on e.id=es.employee_id 
where salary_id is null;

 --Вывести всех работников с названиями их должности.
 select employee_name, role_name from roles_employee re 
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id;

  --Вывести имена и должность только Java разработчиков.
 select employee_name, role_name from roles_employee re 
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id 
 where role_name like '%Java_developer';

  --Вывести имена и должность только Python разработчиков.
 select employee_name, role_name from roles_employee re
 join employees e on e.id=re.employee_id  
 join roles r on r.id=re.role_id 
 where role_name like '%Python_developer';

  --Вывести имена и должность всех QA инженеров.
 select employee_name, role_name from roles_employee re 
 join employees e on e.id=re.employee_id
 join roles r on r.id=re.role_id 
 where role_name like '%QA_engineer';

  --Вывести имена и должность ручных QA инженеров.
 select employee_name, role_name from roles_employee re
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id 
 where role_name like '%Manual_QA_engineer'; 

  --Вывести имена и должность автоматизаторов QA.
 select employee_name, role_name from roles_employee re
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id 
 where role_name like '%Automation_QA_engineer'; 

  --Вывести имена и зарплаты Junior специалистов.
 select employee_name, monthly_salary from salary s
 join employee_salary es on s.id=es.salary_id 
 join employees e on e.id=es.employee_id
 join roles_employee re on e.id=re.employee_id 
 join roles r on re.role_id=r.id
 where role_name like '%Junior%';

  --Вывести имена и зарплаты Middle специалистов.
 select employee_name, monthly_salary from salary s
 join employee_salary es on s.id=es.salary_id 
 join employees e on e.id=es.employee_id
 join roles_employee re on e.id=re.employee_id 
 join roles r on re.role_id=r.id
 where role_name like '%Middle%';

  --Вывести имена и зарплаты Senior специалистов.
 select employee_name, monthly_salary from salary s
 join employee_salary es on s.id=es.salary_id 
 join employees e on e.id=es.employee_id
 join roles_employee re on e.id=re.employee_id 
 join roles r on re.role_id=r.id
 where role_name like '%Senior%';

  --Вывести зарплаты Java разработчиков.
select monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%Java_developer';

--Вывести зарплаты Python разработчиков.
select monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%Python_developer';

  --Вывести имена и зарплаты Junior Python разработчиков.
select employee_name, monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like 'Junior_Python%';

  --Вывести имена и зарплаты Middle JS разработчиков.
select employee_name, monthly_salary from salary s
join employee_salary es on es.salary_id= s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name='Middle_Java_developer';

  --Вывести имена и зарплаты Senior Java разработчиков.
select employee_name, monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name='Senior_Java_developer';

  --Вывести зарплаты Junior QA инженеров.
select monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%Junior_QA_Engineer%';

  --Вывести среднюю зарплату всех Junior специалистов.
select AVG(monthly_salary) from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id
where role_name like '%Junior%';

  --Вывести сумму зарплат JS разработчиков.
select sum(monthly_salary) from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%JS_developer';

  --Вывести минимальную ЗП QA инженеров.
select MIN(monthly_salary) from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%QA_engineer';

  --Вывести максимальную ЗП QA инженеров.
select max(monthly_salary) from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%QA_engineer';

  --Вывести количество QA инженеров.
select count(role_name) from roles 
where role_name like '%QA_engineer';

  --Вывести количество Middle специалистов.
select count(role_name) from roles 
where role_name like '%Middle%';

  --Вывести количество разработчиков.
select count(role_name) from roles 
where role_name like '%developer%';

  --Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) from salary s
join employee_salary es on s.id=es.salary_id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id
where role_name like '%developer';

  --Вывести имена, должности и ЗП всех специалистов по возрастанию.
select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
order by employee_name;

  --Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300.
select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where monthly_salary between 1700 and 2300
order by employee_name;

  --Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300.
select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where monthly_salary<2300
order by employee_name;

  --Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000.
select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where monthly_salary in (1100, 1500, 2000)
order by employee_name;