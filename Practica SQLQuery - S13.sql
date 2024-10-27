use BDCiclo2_2024;

Create Table Pais2(
	IdPais Int Primary Key Identity(1,1),
	NomPais Nvarchar(30) Not Null Unique
);
--drop table pais;

Insert Into Pais2 Values(
	'El Salvador'
);

Insert Into Pais2 Values('Mexico');

Select * From Pais2;

Create Table Ciudad2 (
	IdCiudad Int Primary Key Identity(1,1),
	NomCiudad NVarchar(30) Not Null,
);

Insert Into Ciudad2 Values('Chalatenango');
Insert Into Ciudad2 Values('San Miguel');
Insert Into Ciudad2 Values('Mexico DF');
Insert Into Ciudad2 Values('Puebla');

Select * From Ciudad2;

Create Table CodPostal2(
	IdCodPostal Int Primary Key Identity(1,1),
	CodPostal Nvarchar(15)
);
--drop table CodPostal;
Insert Into CodPostal2 Values('svch01');
Insert Into CodPostal2 Values('svsm02');
Insert Into CodPostal2 Values('mxmx01');
Insert Into CodPostal2 Values('mxpb02');

Select * From CodPostal2;

Create Table Cliente2(
	IdCliente Int Primary Key Identity(1,1),
	NomCliente Nvarchar(30) Not Null Unique,
	Representante NVarchar(30) Not Null,
	Direccion Nvarchar(50) Not Null,
	CiudadId Int Not Null Foreign Key References Ciudad2(IdCiudad),
	CodPostalId Int Not Null Foreign Key References CodPostal2(IdCodPostal),
	PaisId Int Not Null Foreign Key References Pais2(IdPais)
);

Insert Into Cliente2 Values('Nueva Tecnologías','Brando Alvarado','Calle 12 av sur',1,1,1);

Select * From Cliente2;

Create Table Sexo(
	IdSexo Int Primary Key Identity(1,1),
	Sexo Char(1)
);

Insert Into Sexo Values('M');
Insert Into Sexo Values('F');

Select * From Sexo;

Create Table  Puesto2(
	IdPuesto Int Primary Key Identity(1,1),
	NomPuesto NVarchar (15) Not Null Unique
);

Insert Into Puesto2 Values('Gerente General');
Insert Into Puesto2 Values('Supervisor');
Insert Into Puesto2 Values('Ventas');
Insert Into Puesto2 Values('Producción');
Insert Into Puesto2 Values('Mantenimiento');
Insert Into Puesto2 Values('Marketing');
Insert Into Puesto2 Values('contabilidad');

Select * From Puesto2;