-- SQL RDMS

create database student_management;

use student_management;

-- tables in the database(entities)

create table student (
	student_id int primary key auto_increment,
    first_name varchar(100),
    last_name varchar(100),
    email varchar(100) unique,
    date_of_birth date,
    gender char(1)
    );

drop table instructor;    
create table instructor (
	instructor_id int primary key auto_increment,
    instructor_name varchar(100),
    email varchar(100) unique
    );


create table courses (
	course_id int primary key auto_increment,
    course_name varchar(100),
    instructor_id int,
    foreign key (instructor_id) references instructor(instructor_id)
    );
    
create table enrollment (
	enrollment_id int primary key auto_increment,
    student_id int,
    course_id int,
    enrollment_date date,
    foreign key (student_id) references student(student_id),
    foreign key (course_id) references courses(course_id)
    
    );
    

create table grade (
	grade_id int primary key auto_increment,
    enrollment_id int,
    score decimal (5,2),
    foreign key (enrollment_id) references enrollment(enrollment_id)
    );


-- data insertion

INSERT INTO student (first_name, last_name, email, date_of_birth, gender)
VALUES
('John', 'Okafor', 'john.okafor@gmail.com', '2005-03-12', 'M'),
('Mary', 'Adeyemi', 'mary.adeyemi@gmail.com', '2004-07-25', 'F'),
('David', 'Eze', 'david.eze@gmail.com', '2003-11-08', 'M'),
('Sarah', 'Ibrahim', 'sarah.ibrahim@gmail.com', '2006-01-15', 'F'),
('Daniel', 'Musa', 'daniel.musa@gmail.com', '2002-09-20', 'M'),
('Grace', 'Okoro', 'grace.okoro@gmail.com', '2005-05-17', 'F'),
('Michael', 'Bello', 'michael.bello@gmail.com', '2004-12-03', 'M'),
('Aisha', 'Yusuf', 'aisha.yusuf@gmail.com', '2003-06-11', 'F'),
('Samuel', 'Adewale', 'samuel.adewale@gmail.com', '2005-08-29', 'M'),
('Esther', 'Nwachukwu', 'esther.nwachukwu@gmail.com', '2006-02-14', 'F'),
('Peter', 'Abdullahi', 'peter.abdullahi@gmail.com', '2002-04-19', 'M'),
('Blessing', 'Emeka', 'blessing.emeka@gmail.com', '2004-10-07', 'F'),
('Joseph', 'Garba', 'joseph.garba@gmail.com', '2003-01-22', 'M'),
('Hauwa', 'Sani', 'hauwa.sani@gmail.com', '2005-09-13', 'F'),
('Victor', 'Chukwu', 'victor.chukwu@gmail.com', '2002-12-28', 'M'),
('Janet', 'Ojo', 'janet.ojo@gmail.com', '2006-03-05', 'F'),
('Ibrahim', 'Lawal', 'ibrahim.lawal@gmail.com', '2004-06-18', 'M'),
('Ruth', 'Eze', 'ruth.eze@gmail.com', '2003-11-30', 'F'),
('Emmanuel', 'Usman', 'emmanuel.usman@gmail.com', '2005-07-09', 'M'),
('Faith', 'Obi', 'faith.obi@gmail.com', '2004-02-21', 'F');


-- instructor

INSERT INTO instructor (instructor_name, email)
VALUES
('Ahmed Musa', 'ahmed.musa@gmail.com'),
('Grace Okafor', 'grace.okafor@gmail.com'),
('Daniel Adeyemi', 'daniel.adeyemi@gmail.com'),
('Sarah Ibrahim', 'sarah.ibrahim@gmail.com'),
('Michael Eze', 'michael.eze@gmail.com');

-- courses

INSERT INTO courses (course_name, instructor_id)
VALUES
('SQL Fundamentals', 1),
('Python Programming', 2),
('Data Analysis', 3),
('Power BI', 4),
('Machine Learning', 5);


-- enrollment

INSERT INTO enrollment (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-01-10'),
(1, 2, '2026-01-10'),
(2, 1, '2026-01-11'),
(2, 3, '2026-01-11'),
(3, 2, '2026-01-12'),
(3, 4, '2026-01-12'),
(4, 1, '2026-01-13'),
(4, 5, '2026-01-13'),
(5, 3, '2026-01-14'),
(5, 4, '2026-01-14'),
(6, 2, '2026-01-15'),
(6, 5, '2026-01-15'),
(7, 1, '2026-01-16'),
(7, 3, '2026-01-16'),
(8, 4, '2026-01-17'),
(8, 5, '2026-01-17'),
(9, 1, '2026-01-18'),
(9, 2, '2026-01-18'),
(10, 3, '2026-01-19'),
(10, 5, '2026-01-19'),
(11, 1, '2026-01-20'),
(11, 4, '2026-01-20'),
(12, 2, '2026-01-21'),
(12, 3, '2026-01-21'),
(13, 1, '2026-01-22'),
(13, 5, '2026-01-22'),
(14, 2, '2026-01-23'),
(14, 4, '2026-01-23'),
(15, 3, '2026-01-24'),
(15, 5, '2026-01-24'),
(16, 1, '2026-01-25'),
(16, 2, '2026-01-25'),
(17, 3, '2026-01-26'),
(17, 4, '2026-01-26'),
(18, 2, '2026-01-27'),
(18, 5, '2026-01-27'),
(19, 1, '2026-01-28'),
(19, 4, '2026-01-28'),
(20, 3, '2026-01-29'),
(20, 5, '2026-01-29');


-- grade

INSERT INTO grade (enrollment_id, score)
VALUES
(1, 78.50),
(2, 85.00),
(3, 67.50),
(4, 72.00),
(5, 91.00),
(6, 88.50),
(7, 76.00),
(8, 69.50),
(9, 82.00),
(10, 74.50),
(11, 89.00),
(12, 93.50),
(13, 71.00),
(14, 80.50),
(15, 87.00),
(16, 79.50),
(17, 95.00),
(18, 68.00),
(19, 84.50),
(20, 90.00),
(21, 73.50),
(22, 86.00),
(23, 77.00),
(24, 92.50),
(25, 81.00),
(26, 70.50),
(27, 88.00),
(28, 75.00),
(29, 83.50),
(30, 96.00),
(31, 79.00),
(32, 87.50),
(33, 72.50),
(34, 90.50),
(35, 85.50),
(36, 94.00),
(37, 69.00),
(38, 82.50),
(39, 91.50),
(40, 78.00);


-- EDA

-- students with enrolled courses
SELECT 
    student.first_name,
    student.last_name,
    courses.course_name
FROM student
JOIN enrollment
    ON student.student_id = enrollment.student_id
JOIN courses
    ON enrollment.course_id = courses.course_id;
    
    


SELECT 
    instructor.instructor_name,
    courses.course_name
FROM instructor
JOIN courses
    ON instructor.instructor_id = courses.instructor_id;
    
    

SELECT 
    students.first_name,
    students.last_name,
    grade.score
FROM students
JOIN enrollment
    ON students.student_id = enrollment.student_id
JOIN grade
    ON enrollment.enrollment_id = grade.enrollment_id
WHERE grade.score > 80;


SELECT 
    courses.course_name,
    AVG(grade.score) AS average_score
FROM courses
JOIN enrollment
    ON courses.course_id = enrollment.course_id
JOIN grade
    ON enrollment.enrollment_id = grade.enrollment_id
GROUP BY courses.course_id, courses.course_name;



SELECT 
    courses.course_name,
    ROUND(AVG(grade.score), 2) AS average_score
FROM courses
JOIN enrollment
    ON courses.course_id = enrollment.course_id
JOIN grade
    ON enrollment.enrollment_id = grade.enrollment_id
GROUP BY courses.course_id, courses.course_name;


SELECT 
    courses.course_name,
    COUNT(enrollment.student_id) AS total_students
FROM courses
JOIN enrollment
    ON courses.course_id = enrollment.course_id
GROUP BY courses.course_id, courses.course_name;


SELECT 
    students.first_name,
    students.last_name,
    grade.score
FROM students
JOIN enrollment
    ON students.student_id = enrollment.student_id
JOIN grade
    ON enrollment.enrollment_id = grade.enrollment_id
ORDER BY grade.score DESC
LIMIT 5;


SELECT 
    students.first_name,
    students.last_name,
    grade.score
FROM students
JOIN enrollment
    ON students.student_id = enrollment.student_id
JOIN grade
    ON enrollment.enrollment_id = grade.enrollment_id
WHERE grade.score < 50;


SELECT 
    courses.course_name,
    COUNT(enrollment.student_id) AS total_students
FROM courses
JOIN enrollment
    ON courses.course_id = enrollment.course_id
GROUP BY courses.course_id, courses.course_name
HAVING COUNT(enrollment.student_id) > 5;


SELECT 
    first_name,
    last_name,
    date_of_birth
FROM students
ORDER BY date_of_birth DESC
LIMIT 1;


SELECT 
    first_name,
    last_name,
    date_of_birth
FROM students
ORDER BY date_of_birth ASC
LIMIT 1;

SELECT 
    students.first_name,
    students.last_name
FROM students
LEFT JOIN enrollment
    ON students.student_id = enrollment.student_id
WHERE enrollment.student_id IS NULL;


SELECT 
    instructors.instructor_name,
    COUNT(enrollment.student_id) AS total_students
FROM instructors
JOIN courses
    ON instructors.instructor_id = courses.instructor_id
JOIN enrollment
    ON courses.course_id = enrollment.course_id
GROUP BY instructors.instructor_id, instructors.instructor_name;

