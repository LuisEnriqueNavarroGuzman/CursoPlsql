set serveroutput on;

declare v_empleados empleados%rowtype;

begin 
    for v_empleados in (select * from empleados) loop
        dbms_output.put_line(v_empleados.nombre || ' - ' || v_empleados.sueldo);
    end loop;
    
end;    

select * from empleados;

/
begin
    update empleados set sueldo = 10000
     where documento = '00000000';
    if (sql%notfound) then 
        dbms_output.put_line('NO EXISTE REGISTRO PARA MODIFICAR');
    end if;
end;

select * from empleados;

