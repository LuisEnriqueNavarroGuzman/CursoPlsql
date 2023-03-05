set serveroutput on;
declare 
    valor number(2) := 10;
    
    numero number := 0;
    resultado number;
begin 
    while valor < 20 loop
        dbms_output.put_line('El valor es: ' || valor);
        valor := valor + 1;
    end loop;
    
    while numero <= 10 loop
        resultado := 3 * numero;
        dbms_output.put_line('3x' || numero || ' = ' || resultado);
        numero := numero + 1;
    end loop;    
end;    