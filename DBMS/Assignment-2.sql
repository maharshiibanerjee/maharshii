

TABLE:::::::
    |
    |
Create table EMP_Maharshii1452125(EMPNO Number(5) Primary Key,
check(EMPNO>=7000 and EMPNO<=8000),
ENAME Varchar2(10),
JOB Varchar2(10),
MGR Number(5) default NULL,
check(MGR>=7000 and MGR<=8000),
HIREDATE DATE,
SAL Number(6),
COMM Number(6) default 0,
check((COMM>0 and COMM<=1500 and JOB like 'Salesman')or(COMM=0 and JOB not like 'Salesman')),
DEPT_NAME Varchar2(10));
    |
    |
    |
    |
INSERTION:

Insert into EMP_Maharshii1452125 values(7001,'Turner','Manager',Null,'03-Jun-2010',50000,0,'Database');

Insert into EMP_Maharshii1452125 values(7002,'Aishi','Manager',Null,'03-Jan-11',80000,0,'HR');

Insert into EMP_Maharshii1452125 values(7003,'Avishek K','Manager',Null,'09-Jul-11',90000,0,'CRM');

Insert into EMP_Maharshii1452125 values(7004,'Raju','Manager',Null,'28-Jun-10',50000,0,'ERP');

Insert into EMP_Maharshii1452125 values(7005,'Anik','DBA',7001,'03-Jun-2012',70000,0,'Database');

Insert into EMP_Maharshii1452125 values(7006,'Ford','Worker',7002,'30-Sep-13',10000,0,'HR');

Insert into EMP_Maharshii1452125 values(7007,'Aakash','Salesman',7002,'20-Dec-14',50000,500,'HR');

Insert into EMP_Maharshii1452125 values(7008,'Arup','Salesman',7003,'03-Jun-2015',9000,900,'CRM');

Insert into EMP_Maharshii1452125 values(7009,'Lisa','Clerk',7004,'30-Jun-14',8000,0,'ERP');

Insert into EMP_Maharshii1452125 values(7010,'Romita','Salesman',7004,'01-Jan-1980',7000,700,'ERP');
    |
    |
    |
    |

QUERIES:

>Select ename from EMP_Maharshii1452125 where ename like '_i%';
ENAME
--------
Aishi
Lisa
xxxxxxx

>Select ENAME from EMP_Maharshii1452125 where JOB <> 'Manager';
ENAME
----------
Anik
Ford
Aakash
Arup
Lisa
Romita

6 rows selected.
xxxxxxx

||Select count(EMPNO) from EMP_Maharshii1452125 where JOB like 'Manager';
COUNT(EMPNO)
------------
           4
xxxxxxx

>Select max(SAL) as "MAXIMUM",min(SAL) as "MINIMUM",sum(SAL) as "TOTAL",avg(SAL) as "AVERAGE" from EMP_Maharshii1452125;
   MAXIMUM    MINIMUM      TOTAL    AVERAGE
---------- ---------- ---------- ----------
     90000       7000     464000      46400
xxxxxxx

>Select JOB,max(SAL) as "MAXIMUM",min(SAL) as "MINIMUM",sum(SAL) as "TOTAL",avg(SAL) as "AVERAGE" from EMP_Maharshii1452125 group by JOB;
JOB           MAXIMUM    MINIMUM      TOTAL    AVERAGE
---------- ---------- ---------- ---------- ----------
Manager         90000      50000     310000      77500
Clerk            8000       8000       8000       8000
DBA             70000      70000      70000      70000
Worker          10000      10000      10000      10000
Salesman        50000       7000      66000      22000

xxxxxxxx

>Select count(EMPNO) as "Number of Managers" from EMP_Maharshii1452125 where JOB like 'Manager';
Number of Managers
------------------
                 4
xxxxxxxx

>Select ename from EMP_Maharshii1452125 where HIREDATE='01-Jan-1980';

ENAME
----------
Romita
xxxxxxx

>||||Select ENAME from EMP_Maharshii1452125 where SAL=(Select max(SAL) as MAXIMUM from EMP_Maharshii1452125 GROUP BY JOB Having Job='Salesman');
>>||safe query::|| Select Ename from EMP_Maharshii1452125 where SAL=(Select max(SAL) from EMP_Maharshii1452125 Where JOB like 'Salesman') and JOB='Salesman'; 
ENAME
-------
Aakash
xxxxxxx
>|||||Select ename from EMP_Maharshii1452125 where SAL=(Select min(SAL) as MINIMUM from EMP_Maharshii1452125 GROUP BY JOB Having Job= 'Clerk');
>>||safe query::|| Select Ename from EMP_Maharshii1452125 where SAL=(Select min(SAL) from EMP_Maharshii1452125 Where JOB like 'Clerk') and JOB='Clerk';
ENAME
----------
Lisa
xxxxxxx

>Select ename from EMP_Maharshii1452125 where SAL > (select SAL from EMP_Maharshii1452125 where ename like 'Turner');
ENAME
----------
Aishi
Avishek K
Anik

xxxxxxxx

>Select dept_name from EMP_Maharshii1452125 where ENAME like 'Ford';
DEPT_NAME
----------
HR
xxxxxxx

>Select dept_name from EMP_Maharshii1452125 where SAL=(select max(SAL) from EMP_Maharshii1452125);
DEPT_NAME
----------
Database
CRM
xxxxxxx

