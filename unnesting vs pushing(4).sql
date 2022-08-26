/*pushing + table full scan eliminate*/
set autotrace on explain;
create index dept_x01 on dept(dname,deptno);
create index emp_x01 on emp(deptno,job);
select /*+ index(d dept_x01) */ * from dept d
where dname = 'SALES'
and exists (
    select /*+ no_unnest push_subq */ 'x'
    from emp
    where deptno = d.deptno
    and job = 'SALESMAN')
