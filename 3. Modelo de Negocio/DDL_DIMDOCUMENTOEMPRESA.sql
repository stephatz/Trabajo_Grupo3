--DIM_DOCUMENTOEMPRESA

DROP TABLE DIM_DOCUMENTOEMPRESA;

CREATE TABLE DIM_DOCUMENTOEMPRESA( 
CodTipDocEmpresa CHAR(1) NOT NULL,
DescripcionTipDocEmpresa VARCHAR2(50),
CONSTRAINT PK_DimDocumentoEmpresa PRIMARY KEY (CodTipDocEmpresa)
)

SELECT * FROM DIM_DOCUMENTOEMPRESA;

TRUNCATE TABLE DIM_DOCUMENTOEMPRESA;

INSERT INTO DIM_DOCUMENTOEMPRESA VALUES('2', 'RUC de 8 d?gitos');
INSERT INTO DIM_DOCUMENTOEMPRESA VALUES('3', 'RUC de 11 d?gitos');


COMMIT;
