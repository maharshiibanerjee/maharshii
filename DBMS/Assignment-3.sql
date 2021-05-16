


DUAL:
>SELECT SYSDATE FROM DUAL;

>select current_timestamp from DUAL;

>select (2*2) from DUAL;

>select abs(-15) from DUAL;

>SELECT SQRT(5) FROM DUAL;

>SELECT ROUND(15.19,1)"ROUND"FROM DUAL;

>SELECT LOWER('IVAN BAYROSS')"LOWER" FROM DUAL;

>SELECT UPPER('ivan bayross')"UPPER" FROM DUAL;

>SELECT ADD_MONTHS(SYSDATE,5) FROM DUAL;

>SELECT MONTHS_BETWEEN(TO_DATE('21-JUL-01'),TO_DATE('02-JAN-01')) FROM DUAL;

>SELECT MONTHS_BETWEEN('02-JUN-01','02-JAN-01')"MONTHS" FROM DUAL;

>SELECT TO_CHAR(SYSDATE,'DD-MM-YYYY')FROM DUAL;





Create EMP table:

create table EMP_Maharshii1452125(EMPNO Number(5) Primary Key,
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


INSERTION:

insert into EMP_Maharshii1452125 values(7001,'Avi','Manager',Null,'03-Jun-10',90000,0,'Database');

insert into EMP_Maharshii1452125 values(7002,'Avik','Manager',Null,'03-Jan-11',80000,0,'HR');

insert into EMP_Maharshii1452125 values(7003,'Avishek','Manager',Null,'09-Jul-11',90000,0,'CRM');

insert into EMP_Maharshii1452125 values(7004,'Raj','Manager',Null,'28-Jun-10',50000,0,'ERP');

insert into EMP_Maharshii1452125 values(7005,'Anki','DBA',7001,'03-Jun-12',70000,0,'Database');

insert into EMP_Maharshii1452125 values(7006,'Sonal','Worker',7002,'30-Sep-13',10000,0,'HR');

insert into EMP_Maharshii1452125 values(7007,'Anish','Salesman',7002,'20-Dec-14',50000,500,'HR');

insert into EMP_Maharshii1452125 values(7008,'Anup','Salesman',7003,'03-Jun-15',9000,900,'CRM');

insert into EMP_Maharshii1452125 values(7009,'Emily','Worker',7004,'30-Jun-14',8000,0,'ERP');

insert into EMP_Maharshii1452125 values(7010,'Romi','Salesman',7004,'01-Jan-80',7000,700,'ERP');



QUERIES:

select ename from EMP_Maharshii1452125 where ename like '_i%';

select ENAME from EMP_Maharshii1452125 where JOB <> 'Manager';

select count(EMPNO) from EMP_Maharshii1452125 where JOB like 'Manager';

select max(SAL) as "MAXIMUM",min(SAL) as "MINIMUM",sum(SAL) as "TOTAL",avg(SAL) as "AVERAGE" from EMP_Maharshii1452125;

select JOB,max(SAL) as "MAXIMUM",min(SAL) as "MINIMUM",sum(SAL) as "TOTAL",avg(SAL) as "AVERAGE" from EMP_Maharshii1452125 group by JOB;

select count(EMPNO) as "Number of Managers" from EMP_Maharshii1452125 where JOB like 'Manager';

select ename from EMP_Maharshii1452125 where HIREDATE='01-Jan-1980';

 select ename from EMP_Maharshii1452125 where SAL=(select max(SAL) from EMP_Maharshii1452125 where JOB like 'Salesman';

 select ename from EMP_Maharshii1452125 where SAL=(select min(SAL) from EMP_Maharshii1452125 where JOB like 'Salesman';

select ename from EMP_Maharshii1452125 where SAL>(select SAL from EMP_Maharshii1452125 where ename like 'Turner');

select dept_name from EMP_Maharshii1452125 where ENAME like 'FORD';

select dept_name from EMP_Maharshii1452125 where SAL=(select max(SAL) from Maharshii1452125);



