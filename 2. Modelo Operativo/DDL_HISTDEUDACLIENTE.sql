--Modelo Operativo
--HIST_DEUDACLIENTE

DROP TABLE HIST_DEUDACLIENTE;

CREATE TABLE HIST_DEUDACLIENTE( 
periodo CHAR(6) NOT NULL, 
CodClienteSBS VARCHAR2(15) NOT NULL,
CodEntidadFinanciera CHAR(5) NOT NULL,
TipCreditoSBS CHAR(2) NOT NULL,
CodCuentaContable CHAR(14) NOT NULL,
CondicionCliente INTEGER,
ClasificacionCliente CHAR(1),
MtoDeudaCliente NUMBER(16,4)
--CONSTRAINT PK_DeudaCliente PRIMARY KEY (periodo,CodClienteSBS,CodEntidadFinanciera,TipCreditoSBS,CodCuentaContable)
)

SELECT * FROM HIST_DEUDACLIENTE;

TRUNCATE TABLE HIST_DEUDACLIENTE;

INSERT INTO HIST_DEUDACLIENTE(
PERIODO,
CODCLIENTESBS,
CODENTIDADFINANCIERA,
TIPCREDITOSBS,
CODCUENTACONTABLE,
CONDICIONCLIENTE,
CLASIFICACIONCLIENTE,
MTODEUDACLIENTE
) 
SELECT
PERIODO,
COD_SBS_CLI,
COD_EMPRESA,
TIP_CREDITO,
COD_CUENTA,
CONDICION,
CLASIFICACION,
TO_NUMBER (REPLACE (SALDO, '.', ','))
FROM
TMP_DEUDACLIENTE;
-- 2,099,544

COMMIT;
-- REVISO LA INFORMACION
SELECT * FROM HIST_DEUDACLIENTE;



