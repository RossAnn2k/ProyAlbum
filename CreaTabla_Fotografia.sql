--------------------------------------------------------
--  DDL para Tabla FOTOGRAFIA
--------------------------------------------------------

  CREATE TABLE FOTOGRAFIA 
   ( CODIGO NUMBER, 
	 IMAGEN BLOB DEFAULT EMPTY_BLOB(), 
	 DESCRIPCION VARCHAR2(100), 
	 CLASIFICACION NUMBER,
     CONSTRAINT fotografia_PK PRIMARY KEY(CODIGO),
     CONSTRAINT FK_CAT_ALBUM_FOTO FOREIGN KEY(CLASIFICACION)REFERENCES CAT_ALBUM(CLASIFICACION)
   );
   