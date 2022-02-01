  --1.������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
  
  select employee_name, monthly_salary from employee_salary es 
  join employees e on e.id=es.employee_id 
  join salary s on s.id=es.salary_id 
  where monthly_salary is not null;
 
  --2.������� ���� ���������� � ������� �� ������ 2000.
 
  select employee_name e from employee_salary es
  join salary s on es.salary_id=s.id
  join employees e on es.employee_id=e.id
  where monthly_salary<2000;
 
  --3.������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������).
 
 select monthly_salary from salary s  
 left join employee_salary es on s.id=es.salary_id
 where employee_id is null;

  --4.������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������).

 select monthly_salary from salary s  
 left join employee_salary es on s.id=es.salary_id
 where monthly_salary<2000 and employee_id is null;

  --5.����� ���� ���������� ���� �� ��������� ��.

select employee_name from employees e
left join employee_salary es on e.id=es.employee_id 
where salary_id is null;

 --6.������� ���� ���������� � ���������� �� ���������.

 select employee_name, role_name from roles_employee re 
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id;

  --7.������� ����� � ��������� ������ Java �������������.

 select employee_name, role_name from roles_employee re 
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id 
 where role_name like '%Java developer';

  --8.������� ����� � ��������� ������ Python �������������.

 select employee_name, role_name from roles_employee re
 join employees e on e.id=re.employee_id  
 join roles r on r.id=re.role_id 
 where role_name like '%Python developer';

  --9.������� ����� � ��������� ���� QA ���������.

 select employee_name, role_name from roles_employee re 
 join employees e on e.id=re.employee_id
 join roles r on r.id=re.role_id 
 where role_name like '%QA engineer';

  --10.������� ����� � ��������� ������ QA ���������.

 select employee_name, role_name from roles_employee re
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id 
 where role_name like '%Manual QA engineer'; 

  --11.������� ����� � ��������� ��������������� QA.

 select employee_name, role_name from roles_employee re
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id 
 where role_name like '%Automation QA%'; 

  --12.������� ����� � �������� Junior ������������.

 select employee_name, monthly_salary from salary s
 join employee_salary es on s.id=es.salary_id 
 join employees e on e.id=es.employee_id
 join roles_employee re on e.id=re.employee_id 
 join roles r on re.role_id=r.id
 where role_name like '%Junior%';

  --13.������� ����� � �������� Middle ������������.

 select employee_name, monthly_salary from salary s
 join employee_salary es on s.id=es.salary_id 
 join employees e on e.id=es.employee_id
 join roles_employee re on e.id=re.employee_id 
 join roles r on re.role_id=r.id
 where role_name like '%Middle%';

  --14.������� ����� � �������� Senior ������������.

 select employee_name, monthly_salary from salary s
 join employee_salary es on s.id=es.salary_id 
 join employees e on e.id=es.employee_id
 join roles_employee re on e.id=re.employee_id 
 join roles r on re.role_id=r.id
 where role_name like '%Senior%';

  --15.������� �������� Java �������������.

select monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%Java developer';

--16.������� �������� Python �������������.

select monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%Python developer';

  --17.������� ����� � �������� Junior Python �������������.

select employee_name, monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name= 'Junior Python developer';

  --18.������� ����� � �������� Middle JS �������������.

select employee_name, monthly_salary from salary s
join employee_salary es on es.salary_id= s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name='Middle JavaScript developer';

  --19.������� ����� � �������� Senior Java �������������.

select employee_name, monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name='Senior Java developer';

  --20.������� �������� Junior QA ���������.

select monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like 'Junior%QA engineer';

  --21.������� ������� �������� ���� Junior ������������.

select AVG(monthly_salary) from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id
where role_name like '%Junior%';

  --22.������� ����� ������� JS �������������.

select sum(monthly_salary) from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%JavaScript developer';

  --23.������� ����������� �� QA ���������.

select MIN(monthly_salary) from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%QA engineer';

  --24.������� ������������ �� QA ���������.

select max(monthly_salary) from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%QA engineer';

  --25.������� ���������� QA ���������.

select count(re.employee_id) from roles r
join roles_employee re on r.id=re.role_id
where role_name like '%QA engineer';

  --26.������� ���������� Middle ������������.

select count(re.employee_id) from roles r 
join roles_employee re on r.id=re.role_id
where role_name like '%Middle%';

  --27.������� ���������� �������������.

select count(re.employee_id) from roles r
join roles_employee re on re.role_id=r.id
where role_name like '%developer%';

  --28.������� ���� (�����) �������� �������������.

select sum(monthly_salary) from salary s
join employee_salary es on s.id=es.salary_id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id
where role_name like '%developer';

  --29.������� �����, ��������� � �� ���� ������������ �� �����������.

select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
order by employee_name;

  --30.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300.

select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where monthly_salary between 1700 and 2300
order by employee_name;

  --31.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300.

select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where monthly_salary<2300
order by employee_name;

  --32.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000.

select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where monthly_salary in (1100, 1500, 2000)
order by employee_name;
