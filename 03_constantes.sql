declare 
    mensaje constant varchar2(30) := 'Buenos días a todos';
    numero constant number(6) := 30000;
begin 
    mensaje := 'Adios a todos';
    dbms_output.put_line(mensaje);
    dbms_output.put_line(numero);
end;
    