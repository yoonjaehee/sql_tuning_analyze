set timing on
declare
    type rc is ref cursor;
    l_rc rc;
    l_object_name t.object_name%type;
    begin
        for i in 1..20000
        loop
            open l_rc for
                'select /* text1 */ object_name
                from t
                where object_id = :x' using i;
            fetch l_rc into l_object_name;
            close l_rc;
        end loop;
    end;
    /
select sql_text, loads, parse_calls, executions, fetches from v$sql
where sql_text like '%test1%'
and sql_text not like '%v$sql%'
and sql_text not like 'declare%';
