SELECT d.department_id, d.department_name FROM departments d LEFT JOIN employees e ON d.department_id = e.department_id GROUP BY d.department_id, d.department_name HAVING COUNT(e.employee_id) = 0;
