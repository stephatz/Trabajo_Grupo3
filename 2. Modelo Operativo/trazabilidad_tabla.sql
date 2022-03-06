--Revisando variables
--TMP_CLIENTE

--DROP TABLE TMP_CLIENTE;

select distinct length(trim(periodo)) from TMP_CLIENTE -- max 6 (valor 7 es un error de la base)
select count(*) from TMP_CLIENTE where trim(periodo) is null
select * from TMP_CLIENTE where length(trim(periodo))=7 

DELETE FROM TMP_CLIENTE WHERE length(trim(periodo))=7; --HAY UN ERROR EN BASE, SE DUPLICA NOMBRE DE COLUMNAS COMO VALORES

select distinct length(trim(Tip_Reg)) from TMP_CLIENTE --max null
select count(*) from TMP_CLIENTE where trim(Tip_Reg) is null --334776

select distinct length(trim(Cod_Sbs_Cli)) from TMP_CLIENTE --max 9
select count(*) from TMP_CLIENTE where trim(Cod_Sbs_Cli) is null --0

select distinct length(trim(Fec_Reporte)) from TMP_CLIENTE --max 8
select count(*) from TMP_CLIENTE where trim(Fec_Reporte) is null --0

select distinct length(trim(Tip_Doc_Tri)) from TMP_CLIENTE --max 1
select count(*) from TMP_CLIENTE where trim(Tip_Doc_Tri) is null --323470

select distinct length(trim(RUC)) from TMP_CLIENTE --max 11
select count(*) from TMP_CLIENTE where trim(RUC) is null --323470

select distinct length(trim(Tip_Doc_Ide)) from TMP_CLIENTE --max 1
select count(*) from TMP_CLIENTE where trim(Tip_Doc_Ide) is null --5461

select distinct length(trim(Doc_Identidad)) from TMP_CLIENTE --max 8
select count(*) from TMP_CLIENTE where trim(Doc_Identidad) is null --5461

select distinct length(trim(Tip_Persona)) from TMP_CLIENTE --max 1
select count(*) from TMP_CLIENTE where trim(Tip_Persona) is null --0

select distinct length(trim(Tip_Empresa)) from TMP_CLIENTE --max 1
select count(*) from TMP_CLIENTE where trim(Tip_Empresa) is null --334764
select * from TMP_CLIENTE where trim(Tip_Empresa) is not null -- no es útil, solo identifica a empresas extranjeras

select distinct length(trim(Can_Empresa)) from TMP_CLIENTE --max 2
select count(*) from TMP_CLIENTE where trim(Can_Empresa) is null --0

select distinct length(trim(Deu_Calif0)) from TMP_CLIENTE --max 6
select count(*) from TMP_CLIENTE where trim(Deu_Calif0) is null --0

select distinct length(trim(Deu_Calif1)) from TMP_CLIENTE --max 6
select count(*) from TMP_CLIENTE where trim(Deu_Calif1) is null --0

select distinct length(trim(Deu_Calif2)) from TMP_CLIENTE --max 6
select count(*) from TMP_CLIENTE where trim(Deu_Calif2) is null --0

select distinct length(trim(Deu_Calif3)) from TMP_CLIENTE --max 6
select count(*) from TMP_CLIENTE where trim(Deu_Calif3) is null --0

select distinct length(trim(Deu_Calif4)) from TMP_CLIENTE --max 6
select count(*) from TMP_CLIENTE where trim(Deu_Calif4) is null --0

select distinct length(trim(Raz_Soc_o_AP)) from TMP_CLIENTE --max 2
select count(*) from TMP_CLIENTE where trim(Raz_Soc_o_AP) is null --0
select * from TMP_CLIENTE where trim(Raz_Soc_o_AP) is not null -- variable no es útil, todos los valores son NN

select distinct length(trim(Ape_Materna)) from TMP_CLIENTE --max 2
select count(*) from TMP_CLIENTE where trim(Ape_Materna) is null --0
select Ape_Materna from TMP_CLIENTE where trim(Ape_Materna) is not null -- variable no es útil, todos los valores son NN

select distinct length(trim(Ape_Casada)) from TMP_CLIENTE --max 2
select count(*) from TMP_CLIENTE where trim(Ape_Casada) is null --0
select Ape_Materna from TMP_CLIENTE where trim(Ape_Casada) is not null -- variable no es útil, todos los valores son NN

select distinct length(trim(Nombre1)) from TMP_CLIENTE --max 2
select count(*) from TMP_CLIENTE where trim(Nombre1) is null --0
select Ape_Materna from TMP_CLIENTE where trim(Nombre1) is not null -- variable no es útil, todos los valores son NN

select distinct length(trim(Nombre2)) from TMP_CLIENTE --max 2
select count(*) from TMP_CLIENTE where trim(Nombre2) is null --0
select Ape_Materna from TMP_CLIENTE where trim(Nombre2) is not null -- variable no es útil, todos los valores son NN


--TMP_ENTIDAD FINANCIERA

select distinct length(trim(CodEmpre)) from TMP_ENTIDADES --max 5
select count(*) from TMP_ENTIDADES where trim(CodEmpre) is null --0

select distinct length(trim(banco)) from TMP_ENTIDADES --max 66
select count(*) from TMP_ENTIDADES where trim(banco) is null --0

select distinct length(trim(bnk)) from TMP_ENTIDADES --max 20
select count(*) from TMP_ENTIDADES where trim(bnk) is null --0

select distinct length(trim(Tipo)) from TMP_ENTIDADES --max 34
select count(*) from TMP_ENTIDADES where trim(Tipo) is null --0

select distinct length(trim(TipoCompetencia)) from TMP_ENTIDADES --max 22
select count(*) from TMP_ENTIDADES where trim(TipoCompetencia) is null --0

select distinct length(trim(TipoCompetencia2)) from TMP_ENTIDADES --max 22
select count(*) from TMP_ENTIDADES where trim(TipoCompetencia2) is null --0

--TMP_PERSONA

select distinct length(trim(NumDoc)) from TMP_PERSONA --max 8
select count(*) from TMP_PERSONA where trim(NumDoc) is null --0

select distinct length(trim(DigVer)) from TMP_PERSONA --max 1
select count(*) from TMP_PERSONA where trim(DigVer) is null --1224

select distinct length(trim(GrpVot)) from TMP_PERSONA --max 10
select count(*) from TMP_PERSONA where trim(GrpVot) is null --0 No es útil la variable para el análisis

select distinct length(trim(Ubigeo)) from TMP_PERSONA --max 6
select count(*) from TMP_PERSONA where trim(Ubigeo) is null --79

select distinct length(trim(ApPaterno)) from TMP_PERSONA --max 2
select count(*) from TMP_PERSONA where trim(ApPaterno) is null --0

select distinct length(trim(ApMaterno)) from TMP_PERSONA --max 2
select count(*) from TMP_PERSONA where trim(ApMaterno) is null --0

select distinct length(trim(Nombres)) from TMP_PERSONA --max 2
select count(*) from TMP_PERSONA where trim(Nombres) is null --0

select distinct length(trim(FecNac)) from TMP_PERSONA --max 8
select count(*) from TMP_PERSONA where trim(FecNac) is null --0

select distinct length(trim(Sexo)) from TMP_PERSONA --max 1
select count(*) from TMP_PERSONA where trim(Sexo) is null --7

--TMP_UBIGEO

select distinct length(trim(ubigeo)) from TMP_UBIGEO --max 6
select count(*) from TMP_UBIGEO where trim(ubigeo) is null --0

select distinct length(trim(departamento)) from TMP_UBIGEO --max 13
select count(*) from TMP_UBIGEO where trim(departamento) is null --0

select distinct length(trim(provincia)) from TMP_UBIGEO --max 25
select count(*) from TMP_UBIGEO where trim(provincia) is null --0

select distinct length(trim(distrito)) from TMP_UBIGEO --max 36
select count(*) from TMP_UBIGEO where trim(distrito) is null --0

select distinct length(trim(Codigo)) from TMP_UBIGEO --max 6
select count(*) from TMP_UBIGEO where trim(Codigo) is null --1

select distinct length(trim(distrito_det)) from TMP_UBIGEO --max 29
select count(*) from TMP_UBIGEO where trim(distrito_det) is null --0

select distinct length(trim(flgzona)) from TMP_UBIGEO --max 4
select count(*) from TMP_UBIGEO where trim(flgzona) is null --0

select distinct length(trim(CENTROSNEGOCIO)) from TMP_UBIGEO --max 14
select count(*) from TMP_UBIGEO where trim(CENTROSNEGOCIO) is null -- 1803 variable no es útil para el análisis

select distinct length(trim(FLGPROVCENTROSNEGOCIO)) from TMP_UBIGEO -- NULL
select count(*) from TMP_UBIGEO where trim(FLGPROVCENTROSNEGOCIO) is null -- 1834 variable no es útil para el análisis

select distinct length(trim(distrito_agg)) from TMP_UBIGEO --max 25
select count(*) from TMP_UBIGEO where trim(distrito_agg) is null --1

select distinct length(trim(flgciudad)) from TMP_UBIGEO --max 1
select count(*) from TMP_UBIGEO where trim(flgciudad) is null --0





