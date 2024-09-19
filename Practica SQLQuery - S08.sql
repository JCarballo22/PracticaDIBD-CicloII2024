Create Database BDCiclo2_2024;

Use BDCiclo2_2024;

Create Table Cliente(
	IdCliente Int Primary Key Identity(1,1),
	NombreCliente Nvarchar(50) Not Null Unique,
	Representante Nvarchar(50) Not Null,
	Direccion Nvarchar(100) Not Null,
	Ciudad Nvarchar(20),
	CodigoPostal Int,
	Pais Nvarchar(15)
);

--Drop Table Cliente;

Select * From Cliente;

Insert Into Cliente Values (
'Pupuseria Maria','Vanessa Rivera','colonia 123', 'Chalatenango',1348,'El Salvador'
);

use BDAsistente;

Create Table Persona9(
	Id Int Not Null identity,
	Nombre Varchar(25),
	Apellido varchar(25),
	Edad TinyInt Check (Edad>=18)
);

Select * From Persona9;


Insert Into Persona9 Values (
1, 'Jorge', 'Merlos', 18
);

Insert Into Persona9 (Id,Nombre,Apellido,Edad) Values(
2,'Brandon', 'Alvarado', 24
);

Insert Into Persona9 (Id,Apellido) Values(
3,'Figueroa'
);

Insert Into Persona9 (Id,Nombre,Edad) Values(
4,'David',27
);

Insert Into Persona9 Values (
'Yesenia', 'Rivera', 18
);


use BDAsistente;

Select * From Persona9;

Create Table Personas10(
	Id Int Not Null Unique,
	Nombre Nvarchar(30),
	Apellido NVarchar(30),
	Edad Int ,
	Ciudad NVarchar(50),
	Constraint ChkPersona10 Check (Edad > 17 And Ciudad = 'San Miguel')
);

Select * From Personas10;

Insert Into Personas10 Values (1,'Jorge', 'Merlos', 18, 'San Miguel');
Insert Into Personas10 Values (2,'Valeria', 'Vazquez', 19, 'San Miguel');


Select * From Persona2;

Insert Into Persona2 Values (3,'Kevin','Figueroa',18);

Alter Table Persona2
add check (Edad>=18);

delete Persona2
where id = 3;


Create Table Persona11(
	Id Int Not Null Unique,
	Nombre Nvarchar(30),
	Apellido Nvarchar(30),
	Edad TinyInt,
	Ciudad NVarchar(50) Not Null Default 'Ciudad No Proporcionada'
);

Select * From Persona11;

Insert Into Persona11 Values(1,'Yesenia','Rivera',18,'Chalatenango');

Insert Into Persona11(Id,Nombre,Apellido,Edad) Values(2,'Yesenia','Rivera',18);


Create Table Ordenes4 (
	Id Int Not Null Unique,
	NumOrden Int Not Null,
	FechaOrden Date Default GetDate()
);

Select * From Ordenes4;

Insert Into Ordenes4 Values(
1,213,'2024-08-29'
);

Insert Into Ordenes4(Id,NumOrden) Values(
2,791
);

Create Table Persona12(
Id Int Not Null Unique,
Nombre nvarchar(30),
Apellido nvarchar(30) not null,
Edad tinyInt,
Ciudad nvarchar(50)
);

Select * From Persona12;

Alter Table Persona12
Add Constraint DF_Ciudad
Default 'Morazan' for Cuidad;