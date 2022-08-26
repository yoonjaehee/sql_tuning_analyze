create table t
as
select * from all_objects;
update t set object_id = rownum;
create unique index t_idx on t(object_id);
analyze table t compute statistics;
set autotrace traceonly explain
select object_name from t where object_id = 1000;
set autotrace off
alter system flush shared_pool; /*shared pool initialize*/
