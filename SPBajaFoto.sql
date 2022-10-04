SET SERVEROUTPUT ON;
create or replace procedure spBajaFoto (
vCODIGO in FOTOGRAFIA.CODIGO%TYPE,
vDESCRIPCION in FOTOGRAFIA.DESCRIPCION%TYPE,
vCLASIFICACION in FOTOGRAFIA.CLASIFICACION%TYPE
) is

 -- Declaración de variables locales
  
  
  -- Instrucciones de ejecución
    BEGIN
        INSERT INTO FOTOGRAFIA(CODIGO,DESCRIPCION,CLASIFICACION) VALUES (vCODIGO,vDESCRIPCION,vCLASIFICACION);
        commit;
        DBMS_OUTPUT.PUT_LINE('Fotografia dado de alta');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Upps hubo un ERROR');
    END;
    

/
  
  
  
