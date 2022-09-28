create table Shrey_student(
 std_id int,
 std_name varchar(20)
);
select * from Shrey_student

select JOB_ID  from S_HREMPLOYEES  ;
select * from S_HRDEPARTMENTS  ;


SELECT FIRST_NAME,salary,SH.DEPARTMENT_ID ,sh2.DEPARTMENT_NAME ,
ROW_NUMBER ()over (partition by sh.DEPARTMENT_ID order by salary desc) as row_num,
RANK ()over (partition by sh.DEPARTMENT_ID order by salary desc) as rANK_NUM,
DENSE_RANK ()over (partition by sh.DEPARTMENT_ID order by salary desc) as Dense
from S_HREMPLOYEES as SH
full join S_HRDEPARTMENTS as sh2 
on SH.DEPARTMENT_ID = sh2.DEPARTMENT_ID;

