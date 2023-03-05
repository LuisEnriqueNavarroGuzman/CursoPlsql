select * from empleados;

select * from control;

--limpia resgistros de la tabla control
truncate table control;

select * from control;

--ver trigers del usuario
select trigger_name, triggering_event, table_name, status
  from user_triggers;
  
--deshabilitar trigger
alter trigger tr_aumentasueldo disable;

select * from empleados;

update empleados set sueldo = 1000 where documento = '22333444';

select * from empleados;

select * from control;

--habilitar trigger
alter trigger tr_aumentasueldo enable;
update empleados set sueldo = 2000 where documento = '22333444';
select * from control;


