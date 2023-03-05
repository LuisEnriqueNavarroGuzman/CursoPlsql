--CODIGO:
create table control_empleados(
usuario varchar2(20),
fecha date,
accion varchar(20));

--creacion del trigger
create or replace trigger tr_control_empleados
 before insert or update or delete
 on empleados
 for each row
begin
 if inserting then
   insert into control_empleados values (user, sysdate,'ingreso');
  end if;
  if deleting then
   insert into control_empleados values (user, sysdate,'borrado');
 end if; 
 if updating then
  insert into control_empleados values (user, sysdate,'actualización');
 end if;
end tr_control_empleados;

--inserción de datos
insert into empleados values(22656698,'GONZALES','JOSE','GERENCIA',3000);
insert into empleados values(22655568,'RODRIGUEZ','MANUEL','TALLER',1000);
update empleados set sueldo=2000 where documento=23444555;
delete from empleados where documento=23666777;

select *
  from control_empleados;