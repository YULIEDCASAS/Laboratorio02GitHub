USE master
GO
--5.1
CREATE DATABASE dat_bd_prueba;
  ON (NAME=dat_bd_prueba,
  FILENAME= 'C:\tmp\bd_prueba.mdf',
  SIZE=5,
  MAXSIZE=100,
  FILEGROWWHT-5)
  LOG ON(NAME-dat_bd_prueba
  
  
ALTER DATABASE bd_prueba;










--5.6
CREATE TABLE CLIENTES( IDCLIENTE CHAR (5) NOT NULL,
                      NOMBRE_COMPRA VARCHAR(40)NOT NULL,
                      NOMBRE_CONTACTO CHAR (30)NULL,
                      DOMICILIO VARCHAR(60)NULL,
                      CIUDAD CHAR(15)NULL,
                      TELEFONO CHAR(24)NULL,
                      PRIMARY KEY (IDCLIENTE) 
);

CREATE TABLE PEDIDOS (ID_PEDIDOS INTEGER NOT NULL,
                      ID_CLIENTE CHAR (5) NOT NULL,
                      FECHA_PEDIDO DATE NULL,
                      FECHA_ENVIO DATE NULL,
                      FLETE MONEY NULL,
                      NOMBRE_ENVIO VARCHAR (40)NULL,
                      DOMICILIO_ENVIO VARCHAR (60)NULL,
                      CANTIDAD INTEGER NULL,
                      );
--5.7,8                      
ALTER TABLE PEDIDOS
ADD 
REGIONENVIO  INTEGER NULL
/*EL ALTER TABLE Y AL UTILIZAR EL (ADD) AGREGA REGIONENVIO*/
--5.9   
/*Elimine la columna regionenvio que creó originalmente.*/
ALTER TABLE PEDIDOS
DROP COLUMN REGIONENVIO
--5.10
/*LO QUE PASO AL UTILIZAR DROP COLUMN FUE QUE ELIMINO LA COLUMNA REGIONENVIO DE LA TRABLA (PEDIDOS)*/
--5.11
CREATE TABLE CLIENTES1( IDCLIENTE CHAR (5) NOT NULL,
                      NOMBRE_COMPRA VARCHAR(40)NOT NULL,
                      NOMBRE_CONTACTO CHAR (30)NULL,
                      DOMICILIO VARCHAR(60)NULL,
                      CIUDAD CHAR(15)NULL,
                      TELEFONO CHAR(24)NULL,
                      PRIMARY KEY (IDCLIENTE)
                      
                      
);
CREATE TABLE PEDIDOS1 (ID_PEDIDOS INTEGER NOT NULL CONSTRAINT ID_PEDIDOS PRIMARY KEY,
                      ID_CLIENTE CHAR (5) NOT NULL,
                      FECHA_PEDIDO DATE NULL,
                      FECHA_ENVIO DATE NULL,
                      FLETE MONEY NULL,
                      NOMBRE_ENVIO VARCHAR (40)NULL,
                      DOMICILIO_ENVIO VARCHAR (60)NULL,
                      CANTIDAD INTEGER NULL,
                      );
--5.12
    INSERT INTO   [DBO].PEDIDOS1
                 ([ID_PEDIDOS]
                 ,[ID_CLIENTE]
                 ,[FECHA_PEDIDO]
                 ,[FECHA_ENVIO]
                 ,[FLETE]
                 ,[NOMBRE_ENVIO]
                 ,[DOMICILIO_ENVIO]
                 ,[CANTIDAD])
                  VALUES 
                  (10,'PED01','getdate()','100.0','Windstar','Ocean',1)
                  GO
 --¿Por qué no funciona?
/*EL ERROR ESTA EN QUE SOLO SE DIGITARON SIETE DE LAS OCHCO COLUMNAS */


--5.13
ALTER TABLE PEDIDOS1
ADD
FECHAPEDIDO DATE NULL  
--5.14
ALTER TABLE
CANTIDAD  CHECK (''CANTIDAD'' BETWEEN 1 AND 30)
















             






  
