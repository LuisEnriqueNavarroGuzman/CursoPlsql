--CURSORES
/*
 Un cursor es un puntero, que se utiliza para manejar consultas select y esta formado por un conjunto de registros
 que son devueltos por dicha instruccion, desde un punto de vista interno podriamos decir que los cursores son 
 segmentos de memoria utilizados para realizar operaciones con los registros que se devuelven tras ejecutar una sentencia
 de tipo select
*/

--TIPOS DE CURSORES
/*
 Cursores implícitos
 Cursores explícitos
*/

-- Cursores implícitos
/*
 Este tipo de cursores se utiliza para operaciones SELECT INTO. Se usan cuando la consulta devuelve un único registro.
*/

-- Cursores explícitos
/*
 Son los cursores que son declarados y controlados por el programador. Se utilizan cuando la consulta devuelve un conjunto
 de registros. Ocasionalmente también se utilizan en consultas que devuelven un único registro por razones de eficiencia.
 Son más rápidos.
*/

--Atributos
/*
 %ISOPEN: Devuelve "true" si el cursor esta abierto .
 %FOUND: Devuelve "true" si el registros fue satisfactoriamente procesado.
 %NOTFOUND Devueve "true" si el registro no pudo ser procesado. Normalmente esto ocurre cuando ya
           se han procesado todos los registros devueltos por el cursor.
 %ROWCOUNT: Devuelve el número de registros que han sido procesados hasta ese momento.          
*/

 drop table empleados;

 create table empleados(
  documento char(8),
  apellido varchar2(30),
  nombre varchar2(30),
  domicilio varchar2(30),
  seccion varchar2(20),
  sueldo number(8,2)
 );
 insert into empleados values('22222222','Acosta','Ana','Avellaneda 11','Secretaria',1800);
 insert into empleados values('23333333','Bustos','Betina','Bulnes 22','Gerencia',5000);
 insert into empleados values('24444444','Caseres','Carlos','Colon 333','Contabilidad',3000);
 insert into empleados values('32323255','Gonzales','Miguel','Calle 4ta No.90','Contabilidad',8000);
 insert into empleados values('56565555','Suarez','Tomas','Atarazana 78','Cobros',1500);
 
 set serveroutput on;
 
 select * from empleados;
 
 /
 declare
    filas number(2);
 begin
    update empleados
    set sueldo = sueldo + 500 where sueldo >= 3000;
    if(sql%notfound) then 
        dbms_output.put_line('==NO HAY EMPLEADOS DISPONIBLES==');
    elsif sql%found then
        filas := sql%rowcount;
        dbms_output.put_line(filas || ': EMPLEADOS ACTUALIZADOS ');
    end if;   
end;    
    
 select * from empleados;
 