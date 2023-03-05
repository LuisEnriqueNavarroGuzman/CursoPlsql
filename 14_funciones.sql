--Ejemplo 1
create or replace function f_prueba(valor number)
return number
is
begin
    return valor * 2;
end;

select f_prueba(2) as total from dual;

/
--Ejemplo 2
create or replace function f_costo(valor number)
return varchar
is
    costo varchar(20);
begin
    if valor <= 500 then
       costo := 'economico';
    else
        costo := 'costoso';
    end if;
    return costo;
end;
    
select titulo, autor, precio, f_costo(precio) from libros; 
