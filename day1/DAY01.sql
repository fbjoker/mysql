

CREATE DATABASE IF NOT EXISTS mydemo3;
CREATE DATABASE IF NOT EXISTS mydemo4;

SHOW DATABASES;


DROP DATABASE IF EXISTS mydemo3;
DROP DATABASE IF EXISTS mydemo4;

USE demo2;

CREATE TABLE newstabledemo(
	 id INT,
	 disc VARCHAR(20), 
	 age INT,
	 scal DOUBLE
	 );

SHOW TABLES;

DESC newstabledemo;

CREATE TABLE newstabledemo2(
	 id INT,
	 disc VARCHAR(20), 
	 age INT,
	 scal DOUBLE
	 );
	 
DROP TABLE newstabledemo2;
ALTER TABLE newstabledemo ADD (len INT);
ALTER TABLE newstabledemo MODIFY len DOUBLE;
ALTER TABLE newstabledemo CHANGE len weight INT;
ALTER TABLE newstabledemo RENAME demotest;
ALTER TABLE demotest DROP weight;	

SELECT * FROM newstabledemo;
SHOW TABLE newstabledemo;

DESC demotest;

INSERT INTO demotest VALUES(22,'daf',34,NULL);
INSERT INTO demotest VALUES(23,'dasdff',34,2.2);
INSERT INTO demotest (id,age) VALUES(33,44);

UPDATE demotest SET disc='wkk' WHERE id=33;
UPDATE demotest SET scal=5.5 WHERE scal IS NULL;

DELETE FROM demotest WHERE id=33;

SELECT * FROM demotest;

CREATE TABLE stu (
	sid	CHAR(6),
	sname		VARCHAR(50),
	age		INT,
	gender	VARCHAR(50)
);

INSERT INTO stu VALUES('S_1001', 'FanBingBing', 35, 'female');
INSERT INTO stu VALUES('S_1002', 'LiBingBing', 15, 'female');
INSERT INTO stu VALUES('S_1003', 'LiuDeHua', 95, 'male');
INSERT INTO stu VALUES('S_1004', 'ZhouXinChi', 65, 'male');
INSERT INTO stu VALUES('S_1005', 'WangJiaWei', 55, 'male');
INSERT INTO stu VALUES('S_1006', 'ZhaoLiYin', 75, 'female');
INSERT INTO stu VALUES('S_1007', 'GuoFuChen', 25, 'male');
INSERT INTO stu VALUES('S_1008', 'ZhangZiYi', 45, 'female');
INSERT INTO stu VALUES('S_1009', 'WuJin', 85, 'male');
INSERT INTO stu VALUES('S_1010', 'ZhaoWei', 5, 'female');
INSERT INTO stu VALUES('S_1011', 'xxx', NULL, NULL);



SELECT * FROM stu;
SELECT age,sid FROM stu;
SELECT * FROM stu WHERE age>50 AND gender='female';
SELECT * FROM stu WHERE sid='s_1001' OR sname='liudehua';
SELECT * FROM stu WHERE  sid IN('S_1001','S_1002','S_1003');
SELECT * FROM stu WHERE  sid  NOT IN ('S_1001','S_1002','S_1003');
/*
　查询年龄为null的记录
2.7　查询年龄在20到40之间的学生记录（至少两种写法）
2.8　查询性别非男的学生记录（!=或<> not gender=’male’）
2.9　查询姓名不为null的学生记录
*/
SELECT *FROM stu WHERE age IS NULL;
SELECT * FROM stu WHERE age >20 AND age <40;
SELECT * FROM stu WHERE age BETWEEN 20 AND 40;
SELECT * FROM stu WHERE gender != 'male';
SELECT * FROM stu WHERE age IS NOT NULL;

/*查询姓名由5个字母构成的学生记录
3.2　查询姓名由5个字母构成，并且第5个字母为“i”的学生记录
3.3　查询姓名以“z”开头的学生记录
3.4　查询姓名中第2个字母为“i”的学生记录
3.5　查询姓名中包含“a”字母的学生记录

*/

SELECT * FROM stu WHERE sname LIKE '____i%';
SELECT * FROM stu WHERE sname LIKE 'z%';
SELECT * FROM stu WHERE sname LIKE '_i%';
SELECT * FROM stu WHERE sname LIKE '%a%';

DESC stu;
CREATE TABLE emp(
	empno		INT,
	ename		VARCHAR(50),
	job		VARCHAR(50),
	mgr		INT,
	hiredate	DATE,
	sal		DECIMAL(7,2),
	comm		DECIMAL(7,2),
	deptno		INT
) ;
INSERT INTO emp VALUES(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20);
INSERT INTO emp VALUES(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30);
INSERT INTO emp VALUES(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30);
INSERT INTO emp VALUES(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20);
INSERT INTO emp VALUES(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30);
INSERT INTO emp VALUES(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30);
INSERT INTO emp VALUES(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10);
INSERT INTO emp VALUES(7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20);
INSERT INTO emp VALUES(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10);
INSERT INTO emp VALUES(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30);
INSERT INTO emp VALUES(7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20);
INSERT INTO emp VALUES(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30);
INSERT INTO emp VALUES(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20);
INSERT INTO emp VALUES(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);

SELECT DISTINCT ename AS 姓名 FROM emp;

#查看雇员的月薪与佣金之和(IFNULL函数)
SELECT SUM(sal+ISNULL(comm,0)) form emp;

SELECT DISTINCT ename,job FROM emp;

SELECT * FROM emp ORDER BY sal, empno DESC;
SELECT COUNT(comm) FROM emp;
SELECT MAX(sal) FROM emp;
SELECT MIN(sal) FROM emp;
SELECT AVG(sal) FROM emp;


SELECT COUNT(comm) FROM emp WHERE comm>500; 

SELECT COUNT(*) FROM emp WHERE IFNULL(comm,0)+sal>2500;
#	查询有佣金的人数，以及有领导的人数：
SELECT COUNT(job) COUNT(comm)FROM emp ;


SELECT SUM(sal),SUM(IFNULL(comm,0)) FROM emp;

SELECT job ,COUNT(job)FROM emp GROUP BY job;
/*
	查询每个部门的部门编号和每个部门的工资和：
	查询每个部门的部门编号以及每个部门的人数：
	查询每个部门的部门编号以及每个部门工资大于1500的人数：
*/
SELECT deptno,SUM(sal) FROM emp GROUP BY deptno;
SELECT deptno,COUNT(*) FROM emp GROUP BY deptno;

SELECT deptno,COUNT(*) FROM emp WHERE sal>1500 GROUP BY deptno;

#查询工资总和大于9000的部门编号以及工资和
SELECT deptno,SUM(sal) FROM emp GROUP BY deptno HAVING SUM(sal)>9000;
SELECT deptno,SUM(sal) total FROM emp GROUP BY deptno HAVING total>11000;
SELECT * FROM emp LIMIT 5 #查询表中的前5条记录

#查询表中第10条到第15条记录  总共查6条

SELECT * FROM emp LIMIT 9,6;

#查询emp表 并对emp表进行分页展示
#每页数据是3条记录  
#查询第一页的数据
SELECT * FROM emp LIMIT 0,3;#n代表第几页 参数1：（n-1）*3  = 0
#查询第二页的数据
SELECT * FROM emp LIMIT 3,3;#n代表第几页 参数1：（n-1）*3  = 3
#查询第三页的数据
SELECT * FROM emp LIMIT 6,3;#n代表第几页 参数1：（n-1）*3  = 6
总结：每页的起始索引=(n-1)*每页的记录数（pageSize）
SELECT * FROM emp;