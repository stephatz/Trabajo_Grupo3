-=========================================================================
--DIM_TIPOPERSONA;
--=========================================================================

DROP TABLE DIM_TIPOPERSONA;

CREATE TABLE DIM_TIPOPERSONA( 
CodTipoPersona	CHAR(1)  NOT NULL,
DescripcionTipoPersona	VARCHAR2(100),
CONSTRAINT PK_DimTipoPersona PRIMARY KEY (CodTipoPersona)
)

SELECT * FROM DIM_TIPOPERSONA;

TRUNCATE TABLE DIM_TIPOPERSONA;

INSERT INTO DIM_TIPOPERSONA VALUES('1', 'Persona Natural');
INSERT INTO DIM_TIPOPERSONA VALUES('2', 'Persona Juridica');
INSERT INTO DIM_TIPOPERSONA VALUES('3', 'Personas Mancomunadas');
INSERT INTO DIM_TIPOPERSONA VALUES('4', 'Patrimonios fideicometidos y vehiculos de proposito especial. (De acuerdo con la definicion del reglamento de titulizacion)');
COMMIT;