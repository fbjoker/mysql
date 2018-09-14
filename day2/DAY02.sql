SHOW DATABASES;
SHOW TABLES;
SHOW TABLE emp;

SELECT * FROM emp;


CREATE DATABASE demo3;

USE demo3;
DROP DATABASE demo3;

SHOW DATABASES;

CREATE TABLE emmployee(
	id INT PRIMARY KEY AUTO_INCREMENT,
	ename VARCHAR(20) NOT NULL,
	gender CHAR(3),
	birthday DATE,
	entry_data DATE,
	job VARCHAR(22),
	salary DECIMAL,
	RESUME TEXT
	);

CREATE TABLE emmployee2(
	id INT PRIMARY KEY,
	ename VARCHAR(20) NOT NULL,
	gender CHAR(3),
	birthday DATE,
	entry_data DATE,
	job VARCHAR(22),
	salary DECIMAL,
	RESUME TEXT
	);
	
DROP TABLE emmployee;
DROP TABLE emmployee2;

ALTER TABLE emmployee ADD(image BLOB);
ALTER TABLE emmployee MODIFY job VARCHAR(60);
ALTER TABLE emmployee DROP gender;
ALTER TABLE emmployee RENAME USER;
ALTER TABLE USER CHARACTER SET utf8;
ALTER TABLE USER CHANGE ename username VARCHAR(20);

INSERT INTO USER VALUES(NULL,'zs','2000-1-1','2020-1-1','shower',24000,'justdoit',NULL);
INSERT INTO USER VALUES(NULL,'ls','2002-1-1','2000-1-1','shower',5000,'justdoit',NULL);
INSERT INTO USER VALUES(NULL,'ww','2004-1-1','2002-1-1','shower',8000,'justdoit',NULL);

UPDATE USER  SET salary=5000;

UPDATE USER SET salary=3000 WHERE username='zs';
UPDATE USER SET salary=salary+1000 WHERE username='ww';

DELETE FROM USER  WHERE username='zs';
DELETE FROM USER;
SELECT * FROM USER;


DESC USER;

SHOW TABLES;

CREATE TABLE exam(
		id INT PRIMARY KEY AUTO_INCREMENT,
		NAME VARCHAR(20) NOT NULL,
		chinese DOUBLE,
		math DOUBLE,
		english DOUBLE
	);
	INSERT INTO exam VALUES(NULL,'关羽',85,76,70);
	INSERT INTO exam VALUES(NULL,'张飞',70,75,70);
	INSERT INTO exam VALUES(NULL,'赵云',90,65,95);
	INSERT INTO exam VALUES(NULL,'刘备',97,50,50);
	INSERT INTO exam VALUES(NULL,'曹操',90,89,80);
	INSERT INTO exam VALUES(NULL,'司马懿',90,67,65);
	INSERT INTO exam VALUES(NULL,'刘水水',57,55,70);

SELECT * FROM exam;
SELECT NAME,english FROM exam;
SELECT DISTINCT   FROM exam;

UPDATE  exam SET math=math+10;

SELECT chinese+ math+english FROM exam;
SELECT chinese+10 FROM exam;
SELECT chinese+ math+english AS 总分 FROM exam;
SELECT chinese+ math+english 总分 FROM exam;
SELECT * FROM exam WHERE NAME='刘备';
SELECT * FROM exam WHERE math=67;
SELECT * FROM exam WHERE english >90;
SELECT * FROM exam WHERE math +english+chinese>250;
SELECT * FROM exam WHERE english >=80 AND english <=90;
SELECT * FROM exam WHERE english BETWEEN 80 AND 90;
SELECT * FROM exam WHERE math IN(89,75,91);

SELECT * FROM exam WHERE NAME LIKE '刘_';
 
SELECT * FROM exam WHERE NAME LIKE '刘%'; 
SELECT * FROM exam WHERE math>80 AND chinese >80;
SELECT * FROM exam WHERE math>80 OR chinese >90;

SELECT * FROM exam  ORDER BY math;
SELECT * FROM exam ORDER BY math+english+chinese;
SELECT * FROM exam WHERE NAME LIKE '刘%' ORDER BY math+english+chinese;

SELECT COUNT(*) FROM exam;
SELECT COUNT(*) FROM exam WHERE math>=90;
SELECT COUNT(*) FROM exam WHERE math+english+chinese>=250;

SELECT SUM(math) FROM exam;
SELECT SUM(math) ,SUM(chinese),SUM(english) FROM exam;
SELECT AVG(chinese) FROM exam;

SELECT AVG(math+chinese+english) FROM exam;







