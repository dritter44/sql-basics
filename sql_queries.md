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
The average age of all the students.

Addresses that have a space in their city name.

Students & their addresses that live in a city with more than one word in the city name.

The average number of credits for classes offered at the school.

The first and last name of all students who have received an 'A'.

Each student's first name and the total credits they've enrolled in

The total number of credits each student has received a grade for.

All enrollments, including the class name.

Students born between 1982-1985 (inclusive).

Insert a new enrollment recording that Andre Rohan took PHYS 218 and got an A.
