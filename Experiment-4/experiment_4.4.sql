--  Write a query to do the following:
-- JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table.

 select * from student
 join course 
 on student.Course_id= course.Course_id;
 
 -- LEFT JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. 
 
 select * from student
 left join Course
 on student.Course_id= Course.Course_id;
