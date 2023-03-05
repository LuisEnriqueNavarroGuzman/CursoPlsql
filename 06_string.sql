set serveroutput on;
declare
    nombre varchar2(20); 
    direccion varchar2(30);
    detalle clob;
    eleccion char(1);
    
    saludo varchar2(12) := 'hola a todos';
    
    saludo2 varchar2(30) := '####Hola a todos####';

begin
    nombre := 'Luis Enrique';
    direccion := 'Calle primera no 1';
    detalle := 'Este es el detalle de la variable clob que iniciamos en la
                seccion declarativa, es una variable de gran almacenamiento';
     eleccion := 'y';
    
    dbms_output.put_line(nombre);
    dbms_output.put_line(direccion);
    dbms_output.put_line(detalle);
    
    --FUNCIONES
    dbms_output.put_line(UPPER(saludo));
    dbms_output.put_line(LOWER(saludo));
    dbms_output.put_line(INITCAP(saludo));
    dbms_output.put_line(SUBSTR(saludo,1,1));
    dbms_output.put_line(SUBSTR(saludo,2));
    dbms_output.put_line(INSTR(saludo,'O'));
    
    --FUNCIONES 
    dbms_output.put_line(RTRIM(saludo2, '#'));
    dbms_output.put_line(LTRIM(saludo2, '#'));
    dbms_output.put_line(TRIM( '#' FROM saludo2));


end;    
/    