SET SERVEROUTPUT ON;
create or replace PROCEDURE opcionesDoctoB( --Opcion B Borrado
FOL in	DOCTOFOTOGRAFICO.FOLIO%TYPE)
IS
  -- Declaración de variables locales
  
  BEGIN
  -- Instrucciones de ejecución
    BEGIN
        DELETE DOCTOFOTOGRAFICO where FOLIO = FOL;
        commit;
        DBMS_OUTPUT.PUT_LINE('Documento Borrado');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Upps hubo un ERROR');
    END;
    
END;
