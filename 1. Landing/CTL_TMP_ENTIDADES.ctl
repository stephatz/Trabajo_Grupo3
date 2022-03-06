OPTIONS (SKIP=1)
LOAD DATA
INFILE 'DATA_ENTIDADESFINANCIERAS.txt'
TRUNCATE PRESERVE BLANKS
INTO TABLE TMP_ENTIDADES 
fields terminated by '	'
trailing nullcols
(
	CodEmpre,
    banco            ,
    bnk               ,
    tipo                ,
    TipoCompetencia                  ,
    TipoCompetencia2       
)