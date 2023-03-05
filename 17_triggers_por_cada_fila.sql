 / 
 drop table empleados;
  
 create table empleados(
  documento char(8),
  apellido varchar2(30),
  nombre varchar2(30),
  seccion varchar2(20)
 );

 /
 
 -- Borrar registros de la tabla
 truncate table control;
 
/
 select * 
   from control;
/
create or replace trigger ingresaempleados
before insert 
on empleados
for each row 
    begin
        insert into control values(user, sysdate);
end ingresaempleados;   
/
--INSERTS
 insert into empleados values('22333444','ACOSTA','Ana','Secretaria');
 insert into empleados values('22777888','DOMINGUEZ','Daniel','Secretaria');
 insert into empleados values('22999000','FUENTES','Federico','Sistemas');
 insert into empleados values('22555666','CASEROS','Carlos','Contaduria');
 insert into empleados values('23444555','GOMEZ','Gabriela','Sistemas');
 insert into empleados values('23666777','JUAREZ','Juan','Contaduria');
 
 /
 select *
   from control;
/
-- Borrar trigger
drop trigger ingresaempleados;
 