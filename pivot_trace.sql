/*pivot 사용시 hash group by 사용하게 됨 */
set autotrace on explain;
select *
from (select job, deptno, sal
    from emp)
pivot (sum(sal) for deptno in (10,20,30));

select *
from (select job,deptno,sal from emp);