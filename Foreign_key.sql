-- Create a table Students and make it 'id' Primary Key
CREATE TABLE Students 
(id number primary key, name varchar2(30));

-- Create a table Class and constraint foreign key with references students(id)
CREATE TABLE Class 
(id number primary key, 
name varchar2(40), 
student_id number CONSTRAINT st_id_fac REFERENCES Students(id));

-- Check the created tables Students and Class. We won't be able to add a value if the student id value doesn't exist.
insert into STUDENTS VALUES (1, 'Aliakbar');
insert into CLASS (id, name, student_id) VALUES (10, 'Math', 1);

SELECT * from STUDENTS;
SELECT * from CLASS;
-- It's working, keep going!

-- Create a table Teacher and constraint foreign key with references Class(id)
CREATE TABLE TEACHER (
id number primary key,
name varchar2(45),
class_id number CONSTRAINT teach_cls_id REFERENCES Class(id));


-- Finaly check
INSERT INTO TEACHER (id, name, class_id) VALUES (1, 'Irada Alaskarova', 10);

SELECT * from TEACHER;
SELECT * from CLASS;
SELECT * from STUDENTS; 