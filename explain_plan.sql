explain plan set statement_id ='query1' for
SELECT * from DATENUM where NUMBE = 6; /*해당 SQL에 대한 실행계획이 PLAN_TABLE에 저장됨. SET STATEMENT ID = 부분은 생략가능*/
set autotrace on
SELECT * from DATENUM WHERE NUMBE = 6;
