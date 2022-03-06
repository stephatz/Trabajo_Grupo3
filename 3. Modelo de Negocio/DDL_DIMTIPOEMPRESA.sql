--=========================================================================
--DIM_TIPOEMPRESA
--=========================================================================

DROP TABLE DIM_TIPOEMPRESA;

CREATE TABLE DIM_TIPOEMPRESA( 
CodTipoEmpresa	CHAR(1)  NOT NULL,
DescripcionTipoEmpresa	VARCHAR2(50),
CONSTRAINT PK_DimTipoEmpresa PRIMARY KEY (CodTipoEmpresa)
)

SELECT * FROM DIM_TIPOEMPRESA;

TRUNCATE TABLE DIM_TIPOEMPRESA;

INSERT INTO DIM_TIPOEMPRESA VALUES('X', 'Empresa Extranjera');
INSERT INTO DIM_TIPOEMPRESA VALUES('E', 'Empresa del Estado');
INSERT INTO DIM_TIPOEMPRESA VALUES('M', 'Ministerios');
INSERT INTO DIM_TIPOEMPRESA VALUES('O', 'Otro');
COMMIT;