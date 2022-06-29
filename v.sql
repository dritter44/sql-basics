-- select avg(age(now(), birthdate)) from students
-- select id, line_1,city,state,zipcode 
-- from addresses
-- where addresses.city like '% %';
-- select first_name, last_name, students.address_id, addresses.id, line_1, city, state, zipcode
-- from students right join addresses on students.address_id = addresses.id where addresses.city like '% %';

-- select avg(credits) from classes;

-- The first and last name of all students who have received an 'A'.
-- select first_name, last_name, grade
-- from students right join enrollments on students.id = enrollments.student_id where grade = 'A';

-- Each student's first name and the total credits they've enrolled in
-- select students.first_name, sum(credits)
-- from students right join enrollments on students.id = enrollments.student_id left join classes on enrollments.class_id = classes.id
-- group by students.first_name;

-- The total number of credits each student has received a grade for.
-- select students.first_name, sum(credits)
-- from students right join enrollments on students.id = enrollments.student_id left join classes on enrollments.class_id = classes.id where enrollments.grade is not null
-- group by students.first_name;

-- All enrollments, including the class name.
-- select * from enrollments left join classes on enrollments.class_id = classes.id;

-- Students born between 1982-1985 (inclusive).
-- select id, first_name, last_name, birthdate
-- from students where birthdate < '1986-01-01' and birthdate > '1981-12-31';

-- Insert a new enrollment recording that Andre Rohan took PHYS 218 and got an A.
insert into enrollments (student_id, class_id, grade) values (5,4,'A');