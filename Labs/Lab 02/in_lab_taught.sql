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
select * from departments;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--concatenation and ALL operator (ALL operator is the reverse of DISTINCT)
select first_name || salary as first_name_and_salary from employees;
select ALL salary from employees;
-- or --
select salary from employees;
select salary from employees order by(salary) desc;
select first_name, hire_date from employees order by(first_name) asc;
select first_name, hire_date from employees order by(first_name) asc;
select first_name, hire_date from employees order by(first_name) desc;

----------------------------------- Wild card operators ---------------------------------------
---------- LIKE operator is used for searching
select first_name from employees where first_name like 'A__n%'; 
select first_name from employees where first_name like '%k%';
select first_name from employees where first_name like '%K%';
---------- DUAL table is the dummy table which isused for maths calculations only
select * from DUAL;

-------------------------------------------------------------------------- Numeric functions -------------------------------------------------------------------------------------------
select abs(-90.5) as analysis from dual; --returns posistive value
select ceil (90.2) from dual; --returns greater value
select ceil(-90) from dual;
select floor(90.3) from dual;
select floor(-90.3) from dual; --returns lesser value
select trunc(90.233334, 2) from dual; --removes decimal numbers from a numeber
select trunc(90.233334) from dual;
select round(90.569) from dual;
select greatest(90, 99, 34) from dual;
select least(90, 33, 100) from dual;

----------------------------------- string functions ---------------------------------------
select lower('Adina') from dual;
select first_name, lower(first_name) from employees;
select lower(first_name) from employees;
select first_name, upper(first_name) from employees;
select upper(first_name) from employees;
select INITCAP('the soap') from dual; --capitalizes first letter of every word in a sentence
select length('Adeena') from dual;
select first_name, length(first_name) from employees;
select ltrim('   Adina    ') from dual;
select rtrim('    Adeena  ') from dual;
select trim('    Adeena  ') from dual;
select substr('Adina Faraz', 7, 4) from dual; --indexing starts from 1
select lpad('good',7, '*') from dual;
select rpad('good',7, '*') from dual;

--------------------------------------------- DATE functions --------------------------------------------------------------------

select MONTHS_BETWEEN('16-DEC-2024', '16-SEP-2024') from dual; -- write bigger date first always
select ADD_MONTHS('16-sep-2000', 2) from dual; --add 2 months in the given date
select NEXT_DAY('4-NOV-1999', 'WEDNESDAY') from dual; --4th Nov ke baad Wednesday dobara kab ayega- query?
select next_day('01-JUN-08', 'Wednesday') from dual;
select last_day('01-JUN-08') from dual;
select new_time('01-JUN-08', 'PST', 'EDT') from dual;

-------------------------------------------- CONVERSION FUNCTIONS ---------------------------------------------------------
select to_char(sysdate,'DD-MM-YYYY') from dual; --date function converted into string function
select to_char(sysdate, 'Day') from dual;

--Question: Saturday waale din konse employees hire hue hein?
select * from employees where to_char(hire_date, 'Day') = 'Saturday ';
-- length delimeter issue between Wednesday and other short day names
select * from employees where to_char(hire_date, 'Day') = 'Wednesday';

