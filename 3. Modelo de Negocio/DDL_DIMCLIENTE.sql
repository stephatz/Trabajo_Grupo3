--DIM_CLIENTE

DROP TABLE DIM_CLIENTE;

CREATE TABLE DIM_CLIENTE( 
Codmes CHAR(6) NOT NULL,
CodClienteSBS VARCHAR2(15) NOT NULL,
FechaReporteSBS CHAR(8),
CodTipDocEmpresa CHAR(1),
NumDocEmpresa CHAR(11),
CodTipDocPersona CHAR(1),
NumDocPersona VARCHAR2(15),
CodTipoPersona	CHAR(1),
CodTipoEmpresa CHAR(1),
Can_Empresa INTEGER,
DeuCalifNormal DECIMAL(6,2),
DeuCalifCPP	DECIMAL(6,2),
DeuCalifDeficiente DECIMAL(6,2),
DeuCalifDudoso DECIMAL(6,2),
DeuCalifPerdida DECIMAL(6,2),
CONSTRAINT PK_DimCliente PRIMARY KEY (Codmes,CodClienteSBS)
)

SELECT * FROM DIM_CLIENTE;

TRUNCATE TABLE DIM_CLIENTE;

INSERT INTO DIM_CLIENTE(
CODMES,
CODCLIENTESBS,
FECHAREPORTESBS,
CODTIPDOCEMPRESA,
NUMDOCEMPRESA,
CODTIPDOCPERSONA,
NUMDOCPERSONA,
CODTIPOPERSONA,
CODTIPOEMPRESA,
CAN_EMPRESA,
DEUCALIFNORMAL,
DEUCALIFCPP,
DEUCALIFDEFICIENTE,
DEUCALIFDUDOSO,
DEUCALIFPERDIDA
) 
SELECT
PERIODO,
CODCLIENTESBS,
FECHAREPORTESBS,
TIPOIDEMPRESA,
NUMDOCEMPRESA,
TIPOIDPERSONA,
NUMDOCPERSONA,
TIPOPERSONA,
TIPOEMPRESA,
CAN_EMPRESA,
DEUCALIFNORMAL,
DEUCALIFCPP,
DEUCALIFDEFICIENTE,
DEUCALIFDUDOSO,
DEUCALIFPERDIDA
FROM
HIST_CLIENTE;
-- 334,776


COMMIT;
