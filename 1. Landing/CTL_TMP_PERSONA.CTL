OPTIONS(SKIP=1)
LOAD DATA
INFILE 'DATA_PERSONA.TXT'
TRUNCATE PRESERVE BLANKS
INTO TABLE TMP_PERSONA
fields terminated by '|'
trailing nullcols
(
NumDoc,
DigVer,
GrpVot,
Ubigeo,
ApPaterno,
ApMaterno,
Nombres,
FecNac,
Sexo
) 