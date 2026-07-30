-- FULL OUTER JOIN the 'student' and 'course' tables using 'Course_id' to match the tables. Output the joined table.
select * from student 
full outer join course 
on student.course_id = course.course_id;
