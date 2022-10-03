
create or replace PROCEDURE opcionesDoctoM( 
FOL in	DOCTOFOTOGRAFICO.FOLIO%TYPE,
CLASIF	in DOCTOFOTOGRAFICO.CLASIFICACION%TYPE,
COMEN in DOCTOFOTOGRAFICO.COMENTARIO%TYPE
)
IS
  -- Declaraci�n de variables locales
SET SERVEROUTPUT ON;  
  BEGIN
  -- Instrucciones de ejecuci�n
    BEGIN
        update DOCTOFOTOGRAFICO set comentario=comen where FOLIO = FOL;
        commit;
        DBMS_OUTPUT.PUT_LINE('Documento modificado');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Upps hubo un ERROR');
    END;
    
END;
