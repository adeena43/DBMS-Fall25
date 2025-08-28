------------------------------------------------------------------------- Aggregate functions ------------------------------------------------------------------------------------
select count(*) as total_emps from employees;
select count(*) as total_employees , manager_id from employees group by(manager_id);
select distinct manager_id from employees;
select manager_id from employees group by(manager_id);
select sum(salary) as total_sal from employees ;
-- Question below:
select sum(salary) as tot_sal from employees group by(department_id);

select min(salary) as minimum_salary from employees;
select max(salary) as max_salary from employees;
select max(salary) as maximum_salary from employees group by(department_id);
select avg(salary) as avg_salary from employees;
select avg(salary) as average_salaries from employees group by(department_id);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------- Numeric functions -------------------------------------------------------------------------------------------

