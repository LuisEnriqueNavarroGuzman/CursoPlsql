-- FUNCIONALIDAD DE UN TRIGGER
-- Conservar la integridad referencial y la coherencia entre los datos entre distintas tablas.
-- Registrar los cambios que se efectuan sobre las tablas y la identidad de quien los realizo.
-- Realizar cualquier acción cuando una tabla es modificada.
-- Insertar, actualizar o eliminar datos de una tabla asociada en forma automatica.

-- Reglas de los triggers
-- No pueden ser invocados directamente.
-- Al intentar modificar los datos de una tabla asociada, el triger se ejecuta automaticamente.
-- No recibe ni retornan parámetros.
-- No generan resultados de consultas SQL.

-- Clasificación de los triggers
-- El momento en que se dispara: si se ejecutan antes (before) o después (after) de la sentencia.
-- El evento que los dispara: insert, update o delete, según se ejecute una de estas sentencias sobre la tabla.
/* Nivel depemdiendo si se ejecuta para cada fila afectada en la sentencia (por cada fila) o bien una única vez por sentencia independiente
   de las filas afectadas(nivel de sentencia).  
*/  
 --borrar tablas (si existen)
 /
 drop table libros;
 drop table control;
/
 --crear tablas
 /
 create table libros(
  codigo number(6),
  titulo varchar2(40),
  autor varchar2(30),
  editorial varchar2(20),
  precio number(6,2)
 );
 /
  create table control(
  usuario varchar2(30),
  fecha date
 );
/
create or replace trigger tr_ingresolibros
before insert
on libros 
begin 
    insert into control values(user, sysdate);
end tr_ingresolibros;
/

select * 
  from libros;
  
/

insert into libros values (100, 'Uno', 'Richard Bach', 'Planeta',25);
insert into libros values (102, 'Uno', 'Algebra Lineal', 'Larson',25);

/

select * 
  from control;
  
/  

-- Buscar triggers
   
   SELECT *
     FROM USER_TRIGGERS 
    WHERE TRIGGER_NAME = 'TR_INGRESOLIBROS' 
/    