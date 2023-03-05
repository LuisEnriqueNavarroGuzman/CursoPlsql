drop table empleados;
 drop table control;

 create table empleados(
  documento char(8),
  apellido varchar2(30),
  nombre varchar2(30),
  domicilio varchar2(30),
  seccion varchar2(20),
  sueldo number(8,2)
 );

 create table control(
  usuario varchar2(30),
  fecha date,
  operacion varchar2(30)
 );

 insert into empleados values('22222222','Acosta','Ana','Avellaneda 11','Secretaria',1800);
 insert into empleados values('23333333','Bustos','Betina','Bulnes 22','Gerencia',5000);
 insert into empleados values('24444444','Caseres','Carlos','Colon 333','Contaduria',3000);
 
 
 create or replace trigger tr_control_empleados
 before insert or update  or delete
 on empleados 
 for each row 
    begin 
    if(:new.sueldo > 5000) then
        raise_application_error(-20000, 'SUELDO NO PUEDE SUPERAR LOS $5000');
    end if;  
    insert into control values(user, sysdate, 'INSERCION');
    if(:old.seccion = 'Gerencia') then 
        raise_application_error(-20000, 'NO SE PUEDE ELIMINAR PUESTO DE GERENCIA');
    end if;
    insert into control values(user, sysdate, 'BORRADO');
    if updating('documento') then
        raise_application_error(-20000, 'NO SE PUEDE ACTUALIZAR NUMERO DE DOCUMENTOS');
    end if;
end tr_control_empleados; 

select * from empleados;

insert into empleados values('56985555', 'Suarez', 'Manuel', 'Calle 3ra No. 54', 'Informatica',9000);

delete from empleados where seccion = 'Gerencia';  

update empleados set documento = '11111111' where  documento = '22222222';