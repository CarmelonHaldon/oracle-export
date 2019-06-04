set heading off
set wrap off
set trimspool on
set pagesize 0
set feedback off
set verify off

spool &1 

select
	-- owner ,
	object_type || ',' || object_name
from
	all_objects
where
	-- object_type in ( 'FUNCTION','PACKAGE','PACKAGE BODY','PROCEDURE','TABLE','VIEW' ) and --
--	object_type in('TABLE') and --
	-- last_ddl_time >= coalesce( pstartdate, to_date('20150701','YYYYMMDD')) and -- Date of db creation
	-- decode ( pschema,null,1,owner,1,0 ) = 1
	regexp_like(object_type || ',' || object_name, '&3') and
	not regexp_like(object_type || ',' || object_name, '&4') and
	owner = '&2' and
	1 = 1
order by
	-- case object_type
	--  when 'TABLE'
	--  then 1
	--  when 'VIEW'
	--  then 2
	--  when 'PACKAGE'
	--  then 3
	--  when 'FUNCTION'
	--  then 4
	--  when 'PROCEDURE'
	--  then 5
	--  else 6
	-- end
	object_type,
	object_name;

spool off

exit
