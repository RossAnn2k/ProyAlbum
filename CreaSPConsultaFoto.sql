create or replace procedure consulFoto (incodigo in number) is
vdescrip VARCHAR2(100);
vclasific number;

     begin
     select descripcion,clasificacion  INTO vdescrip, vclasific from FOTOGRAFIA where codigo = incodigo;
     end;
  /
  
  commit
  
