/* fetch call�� ���̱� ���� �κ� ���� ó���� �Ѵ�. arraysize�� �����Ͽ� ���غ��� */
create table test as select * from all_objects;
set autotrace traceonly statistics;
set arraysize 2
select * from test;
/* set arraysize 5
select * from test;
set array size 10
select * from test; 
�غ� ��� arraysize Ű����� fetch count �� �ٰ� block i/o ����*/
