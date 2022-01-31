  --������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
  select employee_name, monthly_salary from employee_salary es 
  join employees e on e.id=es.employee_id 
  join salary s on s.id=es.salary_id 
  where monthly_salary is not null;
 
  --������� ���� ���������� � ������� �� ������ 2000.
  select employee_name e from employee_salary es
  join salary s on es.salary_id=s.id
  join employees e on es.employee_id=e.id
  where monthly_salary<2000;
 
  --������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������).
 select monthly_salary from salary s  
 left join employee_salary es on s.id=es.salary_id
 where employee_id is null;

  --������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������).
 select monthly_salary from salary s  
 left join employee_salary es on s.id=es.salary_id
 where monthly_salary<2000 and employee_id is null;

  --����� ���� ���������� ���� �� ��������� ��.
select employee_name from employees e
left join employee_salary es on e.id=es.employee_id 
where salary_id is null;

 --������� ���� ���������� � ���������� �� ���������.
 select employee_name, role_name from roles_employee re 
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id;

  --������� ����� � ��������� ������ Java �������������.
 select employee_name, role_name from roles_employee re 
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id 
 where role_name like '%Java_developer';

  --������� ����� � ��������� ������ Python �������������.
 select employee_name, role_name from roles_employee re
 join employees e on e.id=re.employee_id  
 join roles r on r.id=re.role_id 
 where role_name like '%Python_developer';

  --������� ����� � ��������� ���� QA ���������.
 select employee_name, role_name from roles_employee re 
 join employees e on e.id=re.employee_id
 join roles r on r.id=re.role_id 
 where role_name like '%QA_engineer';

  --������� ����� � ��������� ������ QA ���������.
 select employee_name, role_name from roles_employee re
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id 
 where role_name like '%Manual_QA_engineer'; 

  --������� ����� � ��������� ��������������� QA.
 select employee_name, role_name from roles_employee re
 join employees e on e.id=re.employee_id 
 join roles r on r.id=re.role_id 
 where role_name like '%Automation_QA_engineer'; 

  --������� ����� � �������� Junior ������������.
 select employee_name, monthly_salary from salary s
 join employee_salary es on s.id=es.salary_id 
 join employees e on e.id=es.employee_id
 join roles_employee re on e.id=re.employee_id 
 join roles r on re.role_id=r.id
 where role_name like '%Junior%';

  --������� ����� � �������� Middle ������������.
 select employee_name, monthly_salary from salary s
 join employee_salary es on s.id=es.salary_id 
 join employees e on e.id=es.employee_id
 join roles_employee re on e.id=re.employee_id 
 join roles r on re.role_id=r.id
 where role_name like '%Middle%';

  --������� ����� � �������� Senior ������������.
 select employee_name, monthly_salary from salary s
 join employee_salary es on s.id=es.salary_id 
 join employees e on e.id=es.employee_id
 join roles_employee re on e.id=re.employee_id 
 join roles r on re.role_id=r.id
 where role_name like '%Senior%';

  --������� �������� Java �������������.
select monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%Java_developer';

--������� �������� Python �������������.
select monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%Python_developer';

  --������� ����� � �������� Junior Python �������������.
select employee_name, monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like 'Junior_Python%';

  --������� ����� � �������� Middle JS �������������.
select employee_name, monthly_salary from salary s
join employee_salary es on es.salary_id= s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name='Middle_Java_developer';

  --������� ����� � �������� Senior Java �������������.
select employee_name, monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name='Senior_Java_developer';

  --������� �������� Junior QA ���������.
select monthly_salary from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%Junior_QA_Engineer%';

  --������� ������� �������� ���� Junior ������������.
select AVG(monthly_salary) from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id
where role_name like '%Junior%';

  --������� ����� ������� JS �������������.
select sum(monthly_salary) from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%JS_developer';

  --������� ����������� �� QA ���������.
select MIN(monthly_salary) from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%QA_engineer';

  --������� ������������ �� QA ���������.
select max(monthly_salary) from salary s
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%QA_engineer';

  --������� ���������� QA ���������.
select count(role_name) from roles 
where role_name like '%QA_engineer';

  --������� ���������� Middle ������������.
select count(role_name) from roles 
where role_name like '%Middle%';

  --������� ���������� �������������.
select count(role_name) from roles 
where role_name like '%developer%';

  --������� ���� (�����) �������� �������������.
select sum(monthly_salary) from salary s
join employee_salary es on s.id=es.salary_id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id
where role_name like '%developer';

  --������� �����, ��������� � �� ���� ������������ �� �����������.
select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
order by employee_name;

  --������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300.
select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where monthly_salary between 1700 and 2300
order by employee_name;

  --������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300.
select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where monthly_salary<2300
order by employee_name;

  --������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000.
select employee_name, role_name, monthly_salary from salary s 
join employee_salary es on es.salary_id=s.id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where monthly_salary in (1100, 1500, 2000)
order by employee_name;