/*Employee names are added on the field emp_name in both the tables.
Note: Do not remove the duplicate names while combining both the tables. */

select emp_name FROM employee
union ALL
select EMP_NAME FROM pt_employee;