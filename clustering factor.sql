create table f
as
select * from all_objects
order by object_id;

create index f_index_id_idx on f(object_id);
create index f_index_name_idx on f(object_name);

exec dbms_stats.gather_table_stats(user, 'F');

select i.index_name, t.blocks table_blocks,i.num_rows, i.clustering_factor
from user_tables t, user_indexes i
where t.table_name = 'F'
and i.table_name = t.table_name;