# Select all rows from the classes table.:
select * from classes;
# Select the name and credits from the classes table where the number of credits is greater than 3.
select name, credits from classes where credits > 3;
# All rows from the classes table where credits is an even number.
select * from classes where (credits%2 = 0);
# All of Tianna's enrollments that she hasn't yet received a grade for.
select students.first_name, students.id, enrollments.student_id, enrollments.class_id, enrollments.grade from students full join enrollments on students.id = enrollments.student_id WHERE students.id = 1 and enrollments.grade is null;
# All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id
select students.first_name, students.id, enrollments.student_id, enrollments.class_id, enrollments.grade from students full join enrollments on students.id = enrollments.student_id WHERE students.first_name = 'Tianna'and enrollments.grade is null;
# All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id, with the class name included in the result set.
select students.first_name, students.id, enrollments.student_id, enrollments.class_id,  classes.id, classes.name from students full join enrollments on students.id = enrollments.student_id inner join classes on enrollments.class_id = classes.id WHERE students.first_name = 'Tianna'and enrollments.grade is null;
# All students born before 1986 who have a 't' in their first or last name.
select * from students where students.birthdate <= '1986-01-01' and (students.first_name like '%T%' or students.last_name like '%T%');
# The average age of all the students.
select avg(age(now(), birthdate)) from students 
# Addresses that have a space in their city name.
select id, line_1,city,state,zipcode from addresses where addresses.city like '% %';
# Students & their addresses that live in a city with more than one word in the city name.
select first_name, last_name, students.address_id, addresses.id, line_1, city, state, zipcode
from students right join addresses on students.address_id = addresses.id where addresses.city like '% %';
# The average number of credits for classes offered at the school.
select avg(credits) from classes;
# The first and last name of all students who have received an 'A'.
select first_name, last_name, grade
from students right join enrollments on students.id = enrollments.student_id where grade = 'A';
# Each student's first name and the total credits they've enrolled in
select students.first_name, sum(credits)
from students right join enrollments on students.id = enrollments.student_id left join classes on enrollments.class_id = classes.id
group by students.first_name;
# The total number of credits each student has received a grade for.
select students.first_name, sum(credits)
from students right join enrollments on students.id = enrollments.student_id left join classes on enrollments.class_id = classes.id where enrollments.grade is not null
group by students.first_name;
# All enrollments, including the class name.
select * from enrollments left join classes on enrollments.class_id = classes.id;
# Students born between 1982-1985 (inclusive).
select id, first_name, last_name, birthdate
from students where birthdate < '1986-01-01' and birthdate > '1981-12-31';
# Insert a new enrollment recording that Andre Rohan took PHYS 218 and got an A.
insert into enrollments (student_id, class_id, grade) values (5,4,'A');