CREATE TABLE employee (
    empid INT PRIMARY KEY,
    empname VARCHAR(100) NOT NULL,
    empsal DECIMAL(10, 2) NOT NULL,
    deptname VARCHAR(50) NOT NULL
);

create or replace procedure storex(
  empidx INT ,
    empnamex VARCHAR(100) ,
    empsalx DECIMAL(10, 2) ,
    deptnamex VARCHAR(50) 
)
language plpgsql
as $$ 
begin
  if(empidx %2 !=0) then 
  INSERT INTO employee (empid, empname, empsal, deptname) 
  VALUES(empidx, empnamex, empsalx, deptnamex);
  else
    raise exception 'empid % is even', empidx;
  end if;
end;
$$ ;

call storex(1, 'Amit Sharma', 75000.00, 'IT');
call storex(2, 'Priya Narayan', 85000.00, 'HR');
select * from employee;