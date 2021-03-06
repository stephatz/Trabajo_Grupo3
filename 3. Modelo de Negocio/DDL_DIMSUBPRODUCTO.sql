--DIM_SUBPRODUCTO

DROP TABLE DIM_SUBPRODUCTO;

CREATE TABLE DIM_SUBPRODUCTO( 
CodSubproducto CHAR(2) NOT NULL,
CodProducto CHAR(2),
DescripcionSubproducto VARCHAR2(30),
CONSTRAINT PK_DimSubProducto PRIMARY KEY (CodSubproducto)
)

SELECT * FROM DIM_SUBPRODUCTO;

TRUNCATE TABLE DIM_SUBPRODUCTO;

INSERT INTO DIM_SUBPRODUCTO VALUES('s1', 'p1', 'Prestamo Peque?a Empresa');
INSERT INTO DIM_SUBPRODUCTO VALUES('s2', 'p2', 'Prestamo MicroEmpresa');
INSERT INTO DIM_SUBPRODUCTO VALUES('s3', 'p3', 'Hipotecario Normal');
INSERT INTO DIM_SUBPRODUCTO VALUES('s4', 'p3', 'Hipotecario MiVivienda');
INSERT INTO DIM_SUBPRODUCTO VALUES('s5', 'p4', 'Prestamo Efectivo');
INSERT INTO DIM_SUBPRODUCTO VALUES('s6', 'p4', 'Prestamo Vehicular');
INSERT INTO DIM_SUBPRODUCTO VALUES('s7', 'p5', 'Saldo de Tarjeta de Credito');
INSERT INTO DIM_SUBPRODUCTO VALUES('s8', 'p5', 'Linea de Tarjeta de Credito');
INSERT INTO DIM_SUBPRODUCTO VALUES('s9', 'p6', 'Otros');

COMMIT;
