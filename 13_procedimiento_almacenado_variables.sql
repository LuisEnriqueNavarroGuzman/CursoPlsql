
create table tabla1( 
   titulo varchar2(40),
   precio number(6,2)
  );
  
/* creacion del procedimiento*/

   create or replace procedure autorlibro(atitulo in varchar2)
 as
   v_autor varchar2(20);
 begin
  select autor into v_autor from libros where titulo=atitulo;
  insert into tabla1
   select titulo,precio
   from libros
   where autor=v_autor;
 end autorlibro;
 
 execute autorlibro('El quijote');
 
 select * from tabla1;