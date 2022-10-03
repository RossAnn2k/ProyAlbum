SET SERVEROUTPUT ON;
create or replace PROCEDURE opcionesDoctoM(  --Opcion M Modificacion
FOL in	DOCTOFOTOGRAFICO.FOLIO%TYPE,
CLASIF	in DOCTOFOTOGRAFICO.CLASIFICACION%TYPE,
COMEN in DOCTOFOTOGRAFICO.COMENTARIO%TYPE
)
IS
  -- Declaración de variables locales
  
  BEGIN
  -- Instrucciones de ejecución
    BEGIN
        update DOCTOFOTOGRAFICO set comentario=comen where FOLIO = FOL;
        commit;
        DBMS_OUTPUT.PUT_LINE('Documento modificado');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Upps hubo un ERROR');
    END;
    
END;
