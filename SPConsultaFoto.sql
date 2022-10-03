SET SERVEROUTPUT ON;
create or replace procedure AltaFoto (incodigo in number) is
vdescrip FOTOGRAFIA.DESCRIPCION%TYPE;
vclasific FOTOGRAFIA.CLASIFICACION%TYPE;

     begin
     select descripcion,clasificacion  INTO vdescrip, vclasific from FOTOGRAFIA where codigo = incodigo;
     end;
  /
  
  commit
  
