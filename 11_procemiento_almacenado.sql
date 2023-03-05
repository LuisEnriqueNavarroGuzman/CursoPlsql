set serveroutput on;

/
--Ejemplo 1
create or replace procedure saludo
as 
begin
    dbms_output.put_line('Hola a todos');
end saludo;    

--Mandar a llamar el procedimiento

/
  begin
    saludo;
  end;
/  
  execute saludo;

/

--Ejemplo 2 

CREATE TABLE Libros
( 
  IDLIBRO number(10) NOT NULL,
  TITULO varchar2(50) NOT NULL,
  AUTOR varchar2(50),
  PRECIO number(10)
);

insert into Libros values(1, 'El quijote', 'MIguel de Cervantes', 454.5);
insert into Libros values(2, 'Cien años de soledad', 'Gabriel G. Marquez', 545.4);
insert into Libros values(3, 'El alquimista', 'Pablo Coehlo', 636.3);

/
create table articulos
(
    codigo number(5),
    nombre varchar2(20),
    descripcion varchar2(30),
    precio number(7,2)

);

insert into articulos values(1, 'Impresora', 'Epson Stylus C45', 400.80);
insert into articulos values(2, 'Impresora', 'Epson Stylus C85', 500);
insert into articulos values(3, 'monitor', 'Samnsung 14', 800);
insert into articulos values(4, 'teclado', 'Ingles', 100);
insert into articulos values(5, 'teclado', 'Español', 90);
insert into articulos values(6, 'mouse', 'Genius', 90);
insert into articulos values(7, 'mouse', 'teclado blanco', 30);
insert into articulos values(8, 'Computadora', 'Dell', 30);

/

create or replace procedure aumenta_precio
as
begin
    update libros set precio = precio + (precio * 0.01);
end;
/
execute aumenta_precio;
/
select * from libros;

/

--Buscar procedimientos
Select *
  From user_objects
 Where objecT_type = 'PROCEDURE';  
 
/

--Eliminar procedimiento
drop procedure saludo;
/
