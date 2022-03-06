OPTIONS (SKIP=1)
LOAD DATA
INFILE 'DATA_UBIGEO.txt'
TRUNCATE PRESERVE BLANKS
INTO TABLE TMP_UBIGEO 
fields terminated by '	'
trailing nullcols
(
ubigeo,
departamento,
provincia,
distrito,
Codigo,
distrito_det,
flgzona,
CENTROSNEGOCIO,
FLGPROVCENTROSNEGOCIO,
distrito_agg,
flgciudad   
)