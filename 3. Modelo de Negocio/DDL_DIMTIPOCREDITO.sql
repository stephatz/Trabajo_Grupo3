
-=========================================================================
--DIM_TIPOCREDITO;
--=========================================================================

DROP TABLE DIM_TIPOCREDITO;

CREATE TABLE DIM_TIPOCREDITO( 
CodTipCreditoSBS	CHAR(2)  NOT NULL,
DescripcionTipCreditoSBS	VARCHAR(100),
CONSTRAINT PK_DimTipoCredito PRIMARY KEY (CodTipCreditoSBS)
)

SELECT * FROM DIM_TIPOCREDITO;

TRUNCATE TABLE DIM_TIPOCREDITO;
INSERT INTO DIM_TIPOCREDITO VALUES('01','Cr�ditos Soberanos');
INSERT INTO DIM_TIPOCREDITO VALUES('02','Cr�ditos a Entidades del sector p�blico');
INSERT INTO DIM_TIPOCREDITO VALUES('03','Cr�ditos a Bancos multilaterales de desarrollo');
INSERT INTO DIM_TIPOCREDITO VALUES('04','Cr�ditos a Empresas del sistema financiero');
INSERT INTO DIM_TIPOCREDITO VALUES('05','Cr�ditos a Empresas de valores');
INSERT INTO DIM_TIPOCREDITO VALUES('06','Cr�ditos Corporativos');
INSERT INTO DIM_TIPOCREDITO VALUES('07','Cr�ditos a Grandes Empresas');
INSERT INTO DIM_TIPOCREDITO VALUES('08','Cr�ditos a Medianas Empresas');
INSERT INTO DIM_TIPOCREDITO VALUES('09','Cr�ditos a Peque�as Empresas');
INSERT INTO DIM_TIPOCREDITO VALUES('10','Cr�ditos a Microempresas');
INSERT INTO DIM_TIPOCREDITO VALUES('11','Cr�ditos de Consumo revolventes');
INSERT INTO DIM_TIPOCREDITO VALUES('12','Cr�ditos de Consumo no revolventes');
INSERT INTO DIM_TIPOCREDITO VALUES('13','Cr�ditos Hipotecarios para vivienda');

COMMIT;