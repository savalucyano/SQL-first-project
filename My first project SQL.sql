CREATE DATABASE student;

USE student;

CREATE TABLE IF NOT EXISTS student(
    student_id INT NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(20),
    first_name VARCHAR(20),
    sex VARCHAR(1) NOT NULL,
    age INT,
    subject VARCHAR(20),
    average_g DECIMAL(3,1),
    PRIMARY KEY(student_id)
    );
    
    DROP TABLE student;
    
    DESCRIBE student;
    
    SELECT * FROM student;
    
    INSERT INTO student(student_id, last_name, first_name, sex, age, subject, average_g)
    VALUES(1, 'Jackson', 'Reed', 'M', 19, 'Biology', 8.9);
    
	INSERT INTO student(last_name, first_name, sex, age, subject, average_g)
    VALUES('Brown', 'David', 'M', 22, 'Computer science', 9.5);
    
    INSERT INTO student(last_name, first_name, sex, age, subject, average_g)
    VALUES('Johnson', 'Emily', 'F', 18, 'Computer science', 10);
    
    INSERT INTO student(last_name, first_name, sex, age, subject, average_g)
    VALUES('Cooper', 'Liam', 'M', 20, 'Math', 9);  
    
	INSERT INTO student(last_name, first_name, sex, age, subject, average_g)
    VALUES('Lawrence', 'Jennifer', 'F', 23, 'Chemistry', 7.9);
    
    INSERT INTO student(last_name, first_name, sex, age, subject, average_g)
    VALUES('Carpenter', 'Sabrina', 'F', 21, 'Music', 9);   
    
	INSERT INTO student(last_name, first_name, sex, age, subject, average_g)
    VALUES('Morgan', 'Olivia', 'F', 21, 'History', 8.7);  
    
	INSERT INTO student(last_name, first_name, sex, age, subject, average_g)
    VALUES('Carter', 'Noah', 'M', 19, 'Geography', 8.5);  
    
	INSERT INTO student(last_name, first_name, sex, age, subject, average_g)
    VALUES('Moore', 'Joseph', 'M', 18, 'Art', 10);
    
	INSERT INTO student(last_name, first_name, sex, age, subject, average_g)
    VALUES('Monroe', 'Zendaya', 'F', 22, 'Drama', 10);
    
    UPDATE student
    SET subject= "Math";
    
    DELETE FROM student;
    
    SELECT * FROM student;
  
   TRUNCATE TABLE student;
   
   SELECT first_name, age
   FROM student;
   
   SELECT s.first_name, s.sex
   FROM student AS s;

   SELECT first_name, last_name
   FROM student
   WHERE subject = "Computer science";
   
   SELECT *
   FROM student
   WHERE subject = "Drama" AND sex = "F";
   
   SELECT count(student_id)
   FROM student;
   
   SELECT avg(average_g)
   FROM student; 
   
   SELECT count(student_id)
   FROM student
   WHERE sex = "F";
   
   SELECT sex, avg(average_g)
   FROM student
   GROUP BY sex;
   
   SELECT *
   FROM student
   WHERE last_name LIKE "C%";