Use BDCiclo2_2024;

Create Table Genero(
	IdGenero Int Primary Key identity (1,1),
	NomGenero NVarchar(30) Unique Not Null
);

Create Table Cantante (
	IdCantante Int Primary Key Identity (1,1),
	Nombre NVarchar(30) Not Null,
	Pais NVarchar(15) Not Null
);

Create Table Cancion (
	IdCancion Int Primary Key Identity(1,1),
	NomCancion NVarchar(50) Not Null,
	CantanteId Int Not Null,
	Foreign Key (CantanteId) References Cantante(IdCantante)
);


Create Table Disco (
	IdDisco Int Primary Key Identity (1,1),
	TituloDisco NVarchar(50) Not Null,
	GeneroId Int Not Null Foreign Key References Genero(IdGenero),
	Precio money Not Null,
	CantanteId Int Not Null Foreign Key References Cantante(IdCantante),
	año Int
);

Create Table CancionDisco(
	IdCD Int Primary Key Identity(1,1),
	DiscoId Int Not Null Foreign Key References Disco(IdDisco),
	CancionId Int Not Null Foreign key References Cancion(IdCancion)
);

select * From Genero;

Select * From Cantante;

Select * From Cancion;

Select * From Disco;

Select * From CancionDisco;