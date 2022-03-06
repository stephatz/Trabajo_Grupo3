CREATE TABLE tmp_entidades 
(
	CodEmpre VARCHAR2(10),
    banco            VARCHAR2(100),
    bnk               VARCHAR2(50),
    tipo                VARCHAR2(50),
    TipoCompetencia     VARCHAR2(50),
    TipoCompetencia2    VARCHAR2(50)
)

select * from tmp_entidades;

SELECT
    replace(ubigeo,'"','')
    departamento,
    provincia,
    distrito,
    codigo,
    distrito_det,
    flgzona,
    centrosnegocio,
    flgprovcentrosnegocio,
    distrito_agg,
    flg_ciudad
FROM
    mm_ubigeo

