--DIM_ENTIDADFINANCIERA

DROP TABLE DIM_ENTIDADFINANCIERA;

CREATE TABLE DIM_ENTIDADFINANCIERA( 
CodEntidadFinanciera CHAR(5) NOT NULL, 
NombreEntidad CHAR(100),
NombreCortoEntidad CHAR(30),
TipoEntidad CHAR(50),
TipoCompetencia CHAR(30),
TipoCompetencia2 CHAR(30),
CONSTRAINT PK_DimEntidades PRIMARY KEY (CodEntidadFinanciera)
)

SELECT * FROM DIM_ENTIDADFINANCIERA;

TRUNCATE TABLE DIM_ENTIDADFINANCIERA;

INSERT INTO DIM_ENTIDADFINANCIERA(
CODENTIDADFINANCIERA,
NOMBREENTIDAD,
NOMBRECORTOENTIDAD,
TIPOENTIDAD,
TIPOCOMPETENCIA,
TIPOCOMPETENCIA2
) 
SELECT
CODENTIDADFINANCIERA,
NOMBREENTIDAD,
NOMBRECORTOENTIDAD,
TIPOENTIDAD,
TIPOCOMPETENCIA,
TIPOCOMPETENCIA2
FROM
HIST_ENTIDADES;
-- 115

COMMIT;

