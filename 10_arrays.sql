--REGLAS DE CONFIGURACION DE ARRAYS O MATRICES 
--En el entorno de oracle, el indice incial para un array o matriz es siempre 1
--Puede inicializar los elementos array utilizando el método constructor del tipo varray.
--Las array o matrices, son elementos de PLSQL unidimensionales.
--Un array es automáticamente NULL cuando se declara y debe inicializarse antes de que se pueda hacer referecia a sus elementos.


set SERVEROUTPUT on;
declare
    type a_paises is varray(5) of varchar2(20);
    nombre a_paises;
    total integer;
begin
    nombre := a_paises('Argentina','Brasil','Perú','Mexico','Rep. Dominicana');
    total := nombre.count;
    for f in 1..total loop
        dbms_output.put_line('Nombre: ' || nombre(f));
    end loop;    
end;
/