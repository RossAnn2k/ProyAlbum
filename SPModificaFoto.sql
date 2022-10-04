SET SERVEROUTPUT ON;
create or replace procedure spModificacionFoto (
inCODIGO in FOTOGRAFIA.CODIGO%TYPE,
inclasificacion in FOTOGRAFIA.clasificacion%TYPE
) is

 -- Declaraci�n de variables locales
  
  
  -- Instrucciones de ejecuci�n
    BEGIN
        UPDATE FOTOGRAFIA SET clasificacion=inclasificacion where codigo = inCODIGO;
        commit;
        DBMS_OUTPUT.PUT_LINE('Fotografia modificada');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Upps hubo un ERROR');
    END;
    

/
  
  
  
