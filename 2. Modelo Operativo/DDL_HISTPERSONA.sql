--HIST_PERSONA

DROP TABLE HIST_PERSONA;

CREATE TABLE HIST_PERSONA( 
NumDocPersona CHAR(8) NOT NULL,
DigVer CHAR(1),
Ubigeo CHAR(6),
ApPaterno CHAR(100),
ApMaterno CHAR(100),
Nombres CHAR(100),
FecNac DATE,
Sexo CHAR(1),
CONSTRAINT PK_Persona PRIMARY KEY (NumDocPersona)
)

SELECT * FROM HIST_PERSONA;

TRUNCATE TABLE HIST_PERSONA;

INSERT INTO HIST_PERSONA(
NUMDOCPERSONA,
DIGVER,
UBIGEO,
APPATERNO,
APMATERNO,
NOMBRES,
FECNAC,
SEXO
) 
SELECT
NUMDOC,
DIGVER,
UBIGEO,
APPATERNO,
APMATERNO,
NOMBRES,
TO_DATE(FECNAC,'YYYY-MM-DD'),
SEXO
FROM
TMP_PERSONA;
-- 28,524

COMMIT;
-- REVISO LA INFORMACION
SELECT * FROM HIST_PERSONA;