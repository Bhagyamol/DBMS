CREATE TABLE STUDENT
(SID BIGINT,NAME VARCHAR(50),DOB DATE, PHYSICS BIGINT,CHEMISTRY BIGINT, MATHS BIGINT);
DESCRIBE STUDENT;
INSERT INTO STUDENT(SID,NAME,DOB,PHYSICS,CHEMISTRY,MATHS)VALUES(1,'MEENU','1997-02-14',40,50,30),
(2,'NIDHIN','2000-4-26',30,20,60),
(3,'APARNA','2001-05-20',40,50,70),
(4,'ANJANA','2002-09-12',50,50,50),
(5,'ARYA','1995-07-24',20,40,10);
SELECT *FROM STUDENT;
SELECT SID,NAME FROM STUDENT WHERE DOB=(SELECT MAX(DOB)FROM STUDENT);
SELECT *FROM STUDENT WHERE MATHS>=40 AND (PHYSICS>=40 OR CHEMISTRY>=40);
ALTER TABLE STUDENT ADD TOTAL INT;
ALTER TABLE STUDENT ADD AVERAGE FLOAT(10,3);
DESCRIBE  STUDENT;
SELECT NAME FROM STUDENT WHERE MATHS=(SELECT MIN(MATHS) FROM STUDENT);
SELECT NAME FROM STUDENT WHERE CHEMISTRY=(SELECT MIN(CHEMISTRY) FROM STUDENT);
UPDATE STUDENT SET TOTAL=PHYSICS+CHEMISTRY+MATHS;
SELECT * FROM STUDENT;
UPDATE STUDENT SET AVERAGE=TOTAL/3;
SELECT *FROM STUDENT ORDER BY TOTAL DESC;
ALTER TABLE STUDENT RENAME COLUMN AVERAGE TO AVG_MARK; 
SELECT * FROM STUDENT;
SELECT AVG(AVG_MARK)AS OVERALL_AVERAGE FROM STUDENT;
SELECT * FROM STUDENT WHERE AVG_MARK >(SELECT AVG(AVG_MARK) AS OVERALL_AVERAGE FROM STUDENT);
SELECT COUNT(*) FROM STUDENT WHERE AVG_MARK>(SELECT AVG(AVG_MARK)AS OVERALL_AVERAGE FROM STUDENT);