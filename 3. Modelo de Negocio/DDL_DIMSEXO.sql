--DIM_SEXO

DROP TABLE DIM_SEXO;

CREATE TABLE DIM_SEXO( 
CodSexo	CHAR(1) NOT NULL,
DescripcionSexo	VARCHAR2(10),
CONSTRAINT PK_DimSexo PRIMARY KEY (CodSexo)
)

SELECT * FROM DIM_SEXO;

TRUNCATE TABLE DIM_SEXO;

INSERT INTO DIM_SEXO VALUES('1', 'Masculino');
INSERT INTO DIM_SEXO VALUES('2', 'Femenino');

COMMIT;