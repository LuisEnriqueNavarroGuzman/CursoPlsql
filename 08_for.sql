set serveroutput on;

declare

begin 
    
    for numero in 10 .. 20 loop
        dbms_output.put_line(numero);
    end loop;
    
    dbms_output.put_line('-------- IN REVERSE --------');
    
    for f in reverse 0 .. 5 loop
        dbms_output.put_line(f);
    end loop;
    
    dbms_output.put_line('-------- TABLA MULTIPLICAR --------');
    
    for f in  1 .. 5 loop
        dbms_output.put_line('2 x ' || f || ' = ' || ( f * 2 ));
    end loop;
    
    
    
end;    