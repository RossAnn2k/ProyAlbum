--------------------------------------------------------
--  DDL para Tabla CAT_ALBUM
--------------------------------------------------------

  CREATE TABLE CAT_ALBUM 
   ( CLASIFICACION NUMBER, 
	 NOMBRE_CLASIFICACION VARCHAR2(30),
     CONSTRAINT CAT_ALBUM_PK PRIMARY KEY (CLASIFICACION)
   );
   