select dept_id, count(*) as number_of_students from Students group by dept_id;
select dept_id, avg(gpa) as avg_gpa from Student group by dept_id having avg(gpa) > 3.0;
select Course.course_name, avg(Student.fee_paid) as avg_fee from Student join Enrollment on Student.student_id = Enrollment.student_id 
join Course on Enrollment.course_id = Course.course_id group by Course.course_name;
select d.Dept_Name, count(f.Faculty_ID) AS Faculty_Count from Faculty f join Department d on f.Dept_ID = d.Dept_ID group by d.Dept_Name;
select faculty_id, faculty_name, salary from Faculty where Salary > (select avg(salary) from Faculty);
select student_id, student_name, gpa from Student where gpa > any(select gpa from Student where dept_id = 1);
select Student_ID, student_name, GPA from ( select Student_ID, student_name, GPA  from Student order by GPA desc
) where ROWNUM <= 3;
select s.student_id, s.STUDENT_NAME from student s where not exists (select e.course_id from enrollment e where e.student_id = (select student_id from student where student_name='ali') minus select e2.course_id from enrollment e2 where e2.student_id=s.student_id);
select dept_id, sum(fee_paid) as total_fees from student group by dept_id;
select distinct course_id from enrollment where student_id in (select student_id from student where gpa>3.5);
