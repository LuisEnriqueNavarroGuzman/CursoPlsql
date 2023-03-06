set serveroutput on
declare
 v_docu empleados.documento%type;
 v_nom  empleados.nombre%type;
 v_ape  empleados.apellido%type;
 v_suel empleados.sueldo%type;
 cursor c_cursor2 is 
    select documento, nombre, apellido, sueldo
    from empleados
    where documento = '22222222';
   
begin 
    open c_cursor2;
    fetch c_cursor2 into v_docu, v_nom, v_ape, v_suel;
    close c_cursor2;
    dbms_output.put_line('Documento: ' || v_docu);
    dbms_output.put_line('Documento: ' || v_nom);
    dbms_output.put_line('Documento: ' || v_ape);
    dbms_output.put_line('Documento: ' || v_suel);
end;    