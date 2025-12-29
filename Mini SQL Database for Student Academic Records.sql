CREATE DATABASE Student_Academic_Records;
USE Student_Academic_Records;
CREATE table Student (
Student_id int primary key,
Name varchar(50),
Age int,
Gender varchar(10),
Department varchar(50)
);

CREATE table Course (
Course_id int primary key,
Course_Name varchar(100),
Credits int
);

CREATE table Enrollment (
Enrollment_id int primary key,
Student_id int,
Course_id int,
Semester varchar(50),
foreign key(Student_id) references Student(Student_id),
foreign key(Course_id) references Course(Course_id)
);

CREATE Table Marks (
Marks_id int primary key,
Student_id int,
Course_id int,
Marks int,
Grade char(2),
foreign key(Student_id) references Student(Student_id),
foreign key(Course_id) references Course(Course_id)
);

SHOW TABLES;
DESC student;
DESC course;
DESC enrollment;
DESC marks;

INSERT INTO Student VALUES
(1,'Amit Sharma',19,'Male','Computer Science'),
(2,'Neha Verma',20,'Female','Bioinformatics'),
(3,'Rahul Singh',18,'Male','Biotechnology'),
(4,'Priya Mehta',21,'Female','MBA'),
(5,'Anjali Gupta',19,'Female','BBA'),
(6,'Rohan Patel',20,'Male','Computer Science'),
(7,'Sneha Iyer',18,'Female','Biotechnology'),
(8,'Kunal Jain',21,'Male','Mechanical'),
(9,'Pooja Nair',19,'Female','Bioinformatics'),
(10,'Arjun Malhotra',20,'Male','Electrical'),
(11,'Simran Kaur',19,'Female','Mechanical'),
(12,'Vikas Yadav',21,'Male','MBA'),
(13,'Ishita Roy',18,'Female','Bioinformatics'),
(14,'Mohit Agarwal',20,'Male','Computer Science'),
(15,'Nidhi Saxena',19,'Female','Biotechnology'),
(16,'Aakash Mishra',21,'Male','MBA'),
(17,'Kritika Sharma',20,'Female','Bioinformatics'),
(18,'Saurabh Kumar',19,'Male','Computer Science'),
(19,'Riya Chatterjee',18,'Female','Biotechnology'),
(20,'Aditya Verma',21,'Male','BBA'),
(21,'Mehul Shah',20,'Male','Electrical'),
(22,'Tanvi Kulkarni',19,'Female','Bioinformatics'),
(23,'Harsh Pandey',18,'Male','Mechanical'),
(24,'Shalini Joshi',21,'Female','MBA'),
(25,'Naman Goel',20,'Male','Computer Science'),
(26,'Ritu Arora',19,'Female','Law'),
(27,'Manish Thakur',21,'Male','Pharmacy'),
(28,'Kavya Pillai',20,'Female','Literature'),
(29,'Abhishek Das',22,'Male','MBA'),
(30,'Preeti Kulkarni',19,'Female','BBA'),
(31,'Varun Khanna',20,'Male','Electrical'),
(32,'Ayesha Khan',18,'Female','Law'),
(33,'Siddharth Rao',21,'Male','Mechanical'),
(34,'Pallavi Deshmukh',19,'Female','Pharmacy'),
(35,'Rakesh Soni',22,'Male','MBA'),
(36,'Divya Bansal',20,'Female','Literature'),
(37,'Yash Mehta',19,'Male','Computer Science'),
(38,'Sonal Jain',18,'Female','Bioinformatics'),
(39,'Rohit Kulkarni',21,'Male','Mechanical'),
(40,'Ira Sen',20,'Female','Law'),
(41,'Akash Kapoor',22,'Male','MBA'),
(42,'Neelam Joshi',19,'Female','BBA'),
(43,'Karan Malhotra',20,'Male','Electrical'),
(44,'Shruti Nair',18,'Female','Bioinformatics'),
(45,'Deepak Verma',21,'Male','Mechanical'),
(46,'Ankita Mishra',20,'Female','Pharmacy'),
(47,'Samar Gupta',22,'Male','MBA'),
(48,'Renu Singh',19,'Female','Literature'),
(49,'Nikhil Batra',20,'Male','Computer Science'),
(50,'Poonam Yadav',18,'Female','Biotechnology');

INSERT INTO Course VALUES
(201,'B.Tech Computer Science',8),
(202,'B.Tech Electrical Engineering',8),
(203,'B.Tech Mechanical Engineering',8),
(204,'B.Tech Bioinformatics',8),
(205,'B.Tech Biotechnology',8),
(206,'Bachelor of Laws (LLB)',6),
(207,'Bachelor of Business Administration (BBA)',6),
(208,'Bachelor of Arts in Literature',6),
(209,'Bachelor of Pharmacy',8),
(210,'Master of Business Administration (MBA)',4);

INSERT INTO Enrollment VALUES
(1,1,201,'Semester 1'), 
(2,2,204,'Semester 1'),
(3,3,205,'Semester 1'), 
(4,4,210,'Semester 1'),
(5,5,207,'Semester 1'), 
(6,6,201,'Semester 1'),
(7,7,205,'Semester 1'), 
(8,8,203,'Semester 1'),
(9,9,204,'Semester 1'), 
(10,10,202,'Semester 1'),
(11,11,203,'Semester 1'), 
(12,12,210,'Semester 1'),
(13,13,204,'Semester 1'), 
(14,14,201,'Semester 1'),
(15,15,205,'Semester 1'), 
(16,16,210,'Semester 1'),
(17,17,204,'Semester 1'), 
(18,18,201,'Semester 1'),
(19,19,205,'Semester 1'), 
(20,20,207,'Semester 1'),
(21,21,202,'Semester 1'), 
(22,22,204,'Semester 1'),
(23,23,203,'Semester 1'), 
(24,24,210,'Semester 1'),
(25,25,201,'Semester 1'),
(26,26,206,'Semester 2'), 
(27,27,209,'Semester 2'),
(28,28,208,'Semester 2'), 
(29,29,210,'Semester 2'),
(30,30,207,'Semester 2'),
(31,31,202,'Semester 2'), 
(32,32,206,'Semester 2'),
(33,33,203,'Semester 2'), 
(34,34,209,'Semester 2'),
(35,35,210,'Semester 2'),
(36,36,208,'Semester 2'), 
(37,37,201,'Semester 2'),
(38,38,204,'Semester 2'), 
(39,39,203,'Semester 2'),
(40,40,206,'Semester 2'),
(41,41,210,'Semester 2'), 
(42,42,207,'Semester 2'),
(43,43,202,'Semester 2'), 
(44,44,204,'Semester 2'),
(45,45,203,'Semester 2'),
(46,46,209,'Semester 2'), 
(47,47,210,'Semester 2'),
(48,48,208,'Semester 2'), 
(49,49,201,'Semester 2'),
(50,50,205,'Semester 2');

INSERT INTO Marks VALUES
(1,1,201,85,'A'), 
(2,2,204,88,'A'),
(3,3,205,75,'B'), 
(4,4,210,90,'A'),
(5,5,207,78,'B'),
(6,6,201,82,'A'), 
(7,7,205,70,'B'),
(8,8,203,76,'B'), 
(9,9,204,84,'A'),
(10,10,202,79,'B'),
(11,11,203,73,'B'), 
(12,12,210,92,'A'),
(13,13,204,81,'A'), 
(14,14,201,88,'A'),
(15,15,205,74,'B'),
(16,16,210,89,'A'), 
(17,17,204,83,'A'),
(18,18,201,77,'B'), 
(19,19,205,71,'B'),
(20,20,207,80,'A'),
(21,21,202,78,'B'), 
(22,22,204,85,'A'),
(23,23,203,74,'B'), 
(24,24,210,91,'A'),
(25,25,201,86,'A'),
(26,26,206,82,'A'), 
(27,27,209,79,'B'),
(28,28,208,84,'A'), 
(29,29,210,88,'A'),
(30,30,207,75,'B'),
(31,31,202,80,'A'), 
(32,32,206,77,'B'),
(33,33,203,73,'B'), 
(34,34,209,81,'A'),
(35,35,210,90,'A'),
(36,36,208,83,'A'), 
(37,37,201,85,'A'),
(38,38,204,78,'B'), 
(39,39,203,76,'B'),
(40,40,206,82,'A'),
(41,41,210,91,'A'), 
(42,42,207,79,'B'),
(43,43,202,77,'B'), 
(44,44,204,86,'A'),
(45,45,203,74,'B'),
(46,46,209,80,'A'), 
(47,47,210,92,'A'),
(48,48,208,84,'A'), 
(49,49,201,88,'A'),
(50,50,205,76,'B');

SELECT COUNT(*) FROM student;
SELECT COUNT(*) FROM course;
SELECT COUNT(*) FROM enrollment;
SELECT COUNT(*) FROM marks;

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM enrollment;
SELECT * FROM marks;

-- JOIN Query 1: Student + Course + Semester
SELECT 
    s.student_id,
    s.name AS student_name,
    c.course_name,
    e.semester
FROM student s
JOIN enrollment e ON s.student_id = e.student_id
JOIN course c ON e.course_id = c.course_id;

-- JOIN Query 2: Student + Marks + Course
SELECT 
    s.name AS student_name,
    c.course_name,
    m.marks,
    m.grade
FROM student s
JOIN marks m ON s.student_id = m.student_id
JOIN course c ON m.course_id = c.course_id;

-- JOIN Query 3: Bioinformatics Students Only
SELECT 
    s.name,
    c.course_name,
    m.marks
FROM student s
JOIN marks m ON s.student_id = m.student_id
JOIN course c ON m.course_id = c.course_id
WHERE c.course_name = 'B.Tech Bioinformatics';

-- JOIN Query 4: Students with Marks > 85
SELECT 
    s.name,
    c.course_name,
    m.marks
FROM student s
JOIN marks m ON s.student_id = m.student_id
JOIN course c ON m.course_id = c.course_id
WHERE m.marks > 85;

-- JOIN Query 5: Course-wise Student List
SELECT 
    c.course_name,
    s.name AS student_name
FROM course c
JOIN enrollment e ON c.course_id = e.course_id
JOIN student s ON e.student_id = s.student_id
ORDER BY c.course_name;

-- GROUP BY Query 1: Course-wise Student Count
SELECT 
    c.course_name,
    COUNT(e.student_id) AS total_students
FROM enrollment e
JOIN course c ON e.course_id = c.course_id
GROUP BY c.course_name;

-- GROUP BY Query 2: Course-wise Average Marks
SELECT 
    c.course_name,
    AVG(m.marks) AS average_marks
FROM marks m
JOIN course c ON m.course_id = c.course_id
GROUP BY c.course_name;

-- GROUP BY Query 3: Student-wise Average Marks
SELECT 
    s.student_id,
    s.name,
    AVG(m.marks) AS average_marks
FROM student s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.name;

-- GROUP BY Query 4: Department-wise Student Count
SELECT 
    department,
    COUNT(student_id) AS total_students
FROM student
GROUP BY department;

-- GROUP BY Query 5: Grade-wise Student Count
SELECT 
    grade,
    COUNT(*) AS total_students
FROM marks
GROUP BY grade;

-- GROUP BY Query 6: Courses Having Average Marks > 80
SELECT 
    c.course_name,
    AVG(m.marks) AS avg_marks
FROM marks m
JOIN course c ON m.course_id = c.course_id
GROUP BY c.course_name
HAVING AVG(m.marks) > 80;

-- GROUP BY Query 7: Students with Average Marks > 85
SELECT 
    s.name,
    AVG(m.marks) AS avg_marks
FROM student s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.name
HAVING AVG(m.marks) > 85;

