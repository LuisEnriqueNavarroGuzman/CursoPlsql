DECLARE 
 a number(2) := 10;
 b number(2) := 20;
 numero number(3) := 100;
 
 BEGIN
  if a > b then 
    dbms_output.put_line(a || ' > ' || b);
  else
    dbms_output.put_line(b || ' > ' || a);
  end if;
  
  if numero = 100 then
    dbms_output.put_line('valor de numero es 100');
  elsif numero = 30 then 
    dbms_output.put_line('el valor de numero es 30');
  else
    dbms_output.put_line('ninguno de los valores fué encontrado');
  end if;
  dbms_output.put_line('El valor exacto del numero es '|| numero);    
 END; 