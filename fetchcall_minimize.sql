/* fetch call을 줄이기 위해 부분 범위 처리를 한다. arraysize를 조정하여 비교해보자 */
create table test as select * from all_objects;
set autotrace traceonly statistics;
set arraysize 2
select * from test;
/* set arraysize 5
select * from test;
set array size 10
select * from test; 
해본 결과 arraysize 키울수록 fetch count 가 줄고 block i/o 줄음*/
