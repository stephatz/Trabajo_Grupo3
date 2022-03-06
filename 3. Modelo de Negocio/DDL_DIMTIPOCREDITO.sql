
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
INSERT INTO DIM_TIPOCREDITO VALUES('01','Créditos Soberanos');
INSERT INTO DIM_TIPOCREDITO VALUES('02','Créditos a Entidades del sector público');
INSERT INTO DIM_TIPOCREDITO VALUES('03','Créditos a Bancos multilaterales de desarrollo');
INSERT INTO DIM_TIPOCREDITO VALUES('04','Créditos a Empresas del sistema financiero');
INSERT INTO DIM_TIPOCREDITO VALUES('05','Créditos a Empresas de valores');
INSERT INTO DIM_TIPOCREDITO VALUES('06','Créditos Corporativos');
INSERT INTO DIM_TIPOCREDITO VALUES('07','Créditos a Grandes Empresas');
INSERT INTO DIM_TIPOCREDITO VALUES('08','Créditos a Medianas Empresas');
INSERT INTO DIM_TIPOCREDITO VALUES('09','Créditos a Pequeñas Empresas');
INSERT INTO DIM_TIPOCREDITO VALUES('10','Créditos a Microempresas');
INSERT INTO DIM_TIPOCREDITO VALUES('11','Créditos de Consumo revolventes');
INSERT INTO DIM_TIPOCREDITO VALUES('12','Créditos de Consumo no revolventes');
INSERT INTO DIM_TIPOCREDITO VALUES('13','Créditos Hipotecarios para vivienda');

COMMIT;