--HIST_ENTIDADES

DROP TABLE HIST_ENTIDADES;

CREATE TABLE HIST_ENTIDADES( 
CodEntidadFinanciera CHAR(5) NOT NULL, 
NombreEntidad CHAR(100),
NombreCortoEntidad CHAR(30),
TipoEntidad CHAR(50),
TipoCompetencia CHAR(30),
TipoCompetencia2 CHAR(30),
CONSTRAINT PK_Entidades PRIMARY KEY (CodEntidadFinanciera)
)

SELECT * FROM HIST_ENTIDADES;

TRUNCATE TABLE HIST_ENTIDADES;

INSERT INTO HIST_ENTIDADES(
CODENTIDADFINANCIERA,
NOMBREENTIDAD,
NOMBRECORTOENTIDAD,
TIPOENTIDAD,
TIPOCOMPETENCIA,
TIPOCOMPETENCIA2
) 
SELECT
CODEMPRE,
BANCO,
BNK,
TIPO,
TIPOCOMPETENCIA,
TIPOCOMPETENCIA2
FROM
TMP_ENTIDADES;
-- 115

COMMIT;
-- REVISO LA INFORMACION
SELECT * FROM HIST_ENTIDADES;