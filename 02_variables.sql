set serveroutput on

DECLARE
identificador integer := 50;
--varchar2 el 2 sive para ahorrar memoria en caso de que no nececsiten los 25 caracteres.
nombre varchar2(25) := 'Luis Enrique';
apodo char(10) := 'joselo';
sueldo number(5) := 30000;
comision decimal(4,2) := 50.20;
fecha_actual date := (sysdate);
fecha date := to_date('2020/07/09','yyyy/mm/dd');
saludo varchar2(50) default 'Buenos días a todos';


BEGIN

dbms_output.put_line('El valor de la variable es: '|| identificador);

END;