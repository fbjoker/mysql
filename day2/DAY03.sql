



CREATE TABLE testtable( 
		sid INT PRIMARY KEY AUTO_INCREMENT,
		sname VARCHAR(20)
		);
CREATE TABLE testtable2( 
		sid INT ,
		sname VARCHAR(20)
		);
	
DESC  testtable2;
SHOW CREATE TABLE testtable2;
CREATE TABLE `testtable2` (
  `sid` INT(11) DEFAULT NULL,
  `sname` VARCHAR(20) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8

ALTER TABLE testtable2 ADD PRIMARY KEY (sid);
CREATE TABLE `testtable2` (
  `sid` INT(11) NOT NULL DEFAULT '0',
  `sname` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8
ALTER TABLE testtable2 CHANGE sid sid INT AUTO_INCREMENT;
CREATE TABLE `testtable2` (
  `sid` INT(11) NOT NULL AUTO_INCREMENT,
  `sname` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8

ALTER TABLE testtable2 CHANGE sid sid INT;
CREATE TABLE `testtable2` (
  `sid` INT(11) NOT NULL DEFAULT '0',
  `sname` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8
ALTER TABLE testtable2 



CREATE TABLE person(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	pname VARCHAR(20)
	);

CREATE TABLE house(
	hid INT PRIMARY KEY AUTO_INCREMENT,
	address VARCHAR(20),
	
	FOREIGN KEY (hid) REFERENCES person(pid)
	)
	
	
INSERT INTO person VALUES(22,'贝吉塔');
INSERT INTO person VALUES(33,'龟仙人');

INSERT INTO house VALUES (22,'57星');
INSERT INTO house VALUES(33,'小岛');
	

SELECT DISTINCT hid FROM house;

SELECT * FROM house,person;


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
	INSERT INTO emp VALUES(9999,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,99);
	
	
CREATE TABLE dept(
	deptno		INT,
	dname		VARCHAR(14),
	loc		VARCHAR(13)
);
INSERT INTO dept VALUES(10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept VALUES(20, 'RESEARCH', 'DALLAS');
INSERT INTO dept VALUES(30, 'SALES', 'CHICAGO');
INSERT INTO dept VALUES(40, 'OPERATIONS', 'BOSTON');
	
	
	
	
	
SELECT * FROM emp e LEFT OUTER JOIN  dept d ON e.`deptno`=d.`deptno` WHERE d.`deptno` IS  NULL;
SELECT * FROM emp e RIGHT OUTER JOIN dept d ON e.`deptno`=d.`deptno` WHERE e.`deptno` IS  NULL;
	

CREATE TABLE test(
NAME CHAR(20),
kecheng CHAR(20),
fenshu CHAR(20)
);


INSERT INTO test VALUES('张三','语文',81),
('张三','数学',75),
('李四','语文',76),
('李四','数学',90),
('王五','语文',81),
('王五','数学',82);	
	

SELECT * FROM test;

SELECT NAME FROM test WHERE fenshu >80;

#------------------------------------------------------------

CREATE DATABASE demo4;

CREATE TABLE emp(
empno INT,
ename VARCHAR(50),
job VARCHAR(50),
mgr INT,
hiredate DATE,
sal DECIMAL(7,2),
comm DECIMAL(7,2),
deptno INT
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
INSERT INTO emp VALUES(7981,'MILLER','CLERK',7788,'1992-01-23',2600,500,20);
	
	
	
CREATE TABLE dept(
deptno INT,
dname VARCHAR(14),
loc VARCHAR(13)
);


INSERT INTO dept VALUES(10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept VALUES(20, 'RESEARCH', 'DALLAS');
INSERT INTO dept VALUES(30, 'SALES', 'CHICAGO');
INSERT INTO dept VALUES(40, 'OPERATIONS', 'BOSTON');


SELECT * FROM dept;
SELECT * FROM emp;
/*	
--所有员工的信息
--薪资大于等于1000并且小于等于2000的员工信息
--从员工表中查询出所有的部门编号
--查询出名字以A开头的员工的信息
--查询出名字第二个字母是L的员工信息
--查询出没有奖金的员工信息
--所有员工的平均工资
--所有员工的工资总和
--所有员工的数量
--最高工资
--最少工资
--最高工资的员工信息
--最低工资的员工信息
*/
SELECT *FROM emp;
SELECT *FROM emp WHERE sal BETWEEN 1000 AND 2000;
SELECT DISTINCT deptno FROM emp;
SELECT * FROM emp WHERE ename LIKE 'A%';
SELECT * FROM emp WHERE ename LIKE '_l%';
SELECT * FROM emp WHERE comm IS NULL;
SELECT AVG(sal+IFNULL(comm,0)) FROM emp;
SELECT SUM(sal) FROM emp;
SELECT COUNT(sal) FROM emp;	
SELECT MAX(sal) FROM emp;
SELECT MIN(sal) FROM emp;
SELECT * FROM emp WHERE sal=(SELECT MAX(sal) FROM emp);

#每个部门的平均工资
SELECT deptno,AVG(sal) FROM emp  GROUP BY deptno;


#查询出高于10号部门的平均工资的员工信息
SELECT AVG(sal) FROM emp  WHERE deptno=10;
SELECT * FROM emp WHERE sal >(SELECT AVG(sal) FROM emp  WHERE deptno=10);

#查询出比10号部门任何员工薪资高的员工信息
SELECT * FROM emp WHERE sal > ALL (SELECT sal FROM emp WHERE deptno=10 );
#和10号部门同名同工作的员工信息
SELECT * FROM emp WHERE ename IN ( SELECT ename  FROM emp WHERE deptno=10 ) AND job IN(SELECT job  FROM emp WHERE deptno=10) AND deptno<>10;

#获取员工的名字和部门的名字
SELECT ename, dname FROM emp e INNER JOIN dept d ON e.`deptno`=d.`deptno`;
SELECT * FROM emp e INNER JOIN dept d ON e.`deptno`=d.`deptno`;
#查询emp表中经理信息
SELECT * FROM emp e INNER JOIN dept d ON e.`deptno`=d.`deptno` WHERE job='manager';

SELECT DISTINCT mgr FROM emp;
SELECT * FROM emp,(SELECT DISTINCT mgr FROM emp) mgrs WHERE emp.empno = mgrs.mgr; #当经理的mgr=empno说明他就是经理

#薪资高于10号部门平均工资的所有员工信息
SELECT * FROM emp e INNER JOIN dept d ON e.`deptno`=d.`deptno` WHERE sal>(SELECT AVG(sal) FROM emp  WHERE deptno=10) AND e.deptno <>10;

SELECT * FROM emp WHERE sal > (SELECT AVG(sal) FROM emp WHERE deptno=10);
#有哪些部门的平均工资高于30号部门的平均工资??
#SELECT * FROM emp e INNER JOIN dept d ON e.`deptno`=d.`deptno` group by e.`deptno`  having avg(sal)>(select sal from emp where deptno=10);

SELECT AVG(sal) FROM emp WHERE deptno=30;
SELECT deptno,AVG(sal) FROM emp GROUP BY deptno HAVING AVG(sal)>(SELECT AVG(sal) FROM emp WHERE deptno=30) ;


SELECT deptno,AVG(sal) FROM emp GROUP BY deptno HAVING AVG(sal) > (SELECT AVG(sal) FROM emp WHERE deptno=30);
#工资>JONES工资
SELECT * FROM emp WHERE sal >(SELECT sal FROM emp WHERE ename='jones');

	SELECT * FROM emp WHERE sal > (SELECT sal FROM emp WHERE ename='JONES');

#查询与SCOTT同一个部门的员工
SELECT * FROM emp WHERE deptno=(SELECT deptno FROM emp WHERE ename='scott');

SELECT * FROM emp WHERE deptno = (SELECT deptno FROM emp WHERE ename = 'SCOTT');
#工资高于30号部门所有人的员工信息
SELECT * FROM emp WHERE sal > ALL (SELECT sal FROM emp WHERE deptno=30 );

SELECT * FROM emp WHERE sal > (SELECT MAX(sal) FROM emp WHERE deptno = 30);
#查询工作和工资与MARTIN完全相同的员工信息
SELECT * FROM emp WHERE  job=(SELECT job FROM emp WHERE ename='martin') AND sal=(SELECT sal FROM emp WHERE ename='martin');
SELECT * FROM emp WHERE (job,sal) IN (SELECT job,sal FROM emp WHERE ename='MARTIN');
#有两个以上直接下属的员工信息??
SELECT DISTINCT job FROM emp;

SELECT mgr,COUNT(*) c FROM emp GROUP BY mgr HAVING c>2 ;
SELECT * FROM emp WHERE empno IN (SELECT mgr FROM emp GROUP BY mgr HAVING COUNT(*)>2 );

SELECT * FROM emp e1 WHERE e1.empno IN (SELECT e2.mgr FROM emp e2 GROUP BY e2.mgr HAVING COUNT(*)>2);
#查询员工编号为7788的员工名称,员工工资,部门名称,部门地址

SELECT ename, sal, dname, loc FROM emp e INNER JOIN dept d ON e.`deptno`=d.`deptno` WHERE e.`empno`=7788;

	SELECT ename,sal ,dname, loc FROM emp ,dept WHERE emp.deptno = dept.deptno AND empno=7788;
/*

	1. 查询出高于本部门平均工资的员工信息
	2. 
列出达拉斯加工作的人中,比纽约平均工资高的人
	3. 
查询7369员工编号,姓名,经理编号和经理姓名
	4. 
查询出各个部门薪水最高的员工所有信息


*/

1.
SELECT AVG(sal)  FROM emp GROUP BY deptno  HAVING emp.sal >AVG(sal);

SELECT * FROM emp WHERE emp.sal >(SELECT AVG(sal) FROM WHERE deptno=deptno emp  GROUP BY deptno);

SELECT AVG(sal) FROM emp GROUP BY deptno;
SELECT AVG(sal) FROM emp e2 WHERE deptno=e2.deptno  GROUP BY e2.deptno

SELECT * FROM emp e1 WHERE e1.sal > (SELECT AVG(e2.sal) FROM emp e2 WHERE e1.deptno=e2.deptno  GROUP BY e2.deptno);
2.
SELECT * FROM emp e INNER JOIN dept d ON e.`deptno`=d.`deptno` WHERE loc ='dallas' AND sal>
(SELECT AVG(sal) FROM emp e INNER JOIN dept d ON e.`deptno`=d.`deptno` WHERE loc='new york');
3.
SELECT ename , empno,mgr 经理编号 FROM emp  WHERE empno=7369;

SELECT ename FROM emp WHERE mgr=

SELECT e1.empno,e1.ename,e1.mgr,mgrtable.ename,mgrtable.empno FROM emp e1,emp mgrtable WHERE e1.mgr = mgrtable.empno; 


1.分组统计每个部门员工最高的薪资是多少
	SELECT MAX(sal),deptno FROM emp GROUP BY deptno;
	
	SELECT * FROM emp e WHERE e.`sal`=(SELECT MAX(e2.sal) FROM emp e2  WHERE e2.`deptno`=e.`deptno` GROUP BY e2.deptno);
	2.算出结果
	SELECT * FROM emp e1 WHERE e1.sal = (SELECT MAX(sal) FROM emp e2 WHERE e1.deptno = e2.deptno GROUP BY deptno);
