Use BDAsistente;

Create Table Roles(
	Id_Rol Int Primary Key Identity (1,1), 
	Rol nvarchar(50) Not Null
);

Create Table Usuarios(
	Id_Usuario Int Primary Key Identity (1,1),
	Nombre nvarchar(50) Not Null,
	Email nvarchar(100) Not Null Unique,
	Id_Rol Int,
	Foreign key (Id_Rol) References Roles (Id_Rol)
);


Insert Into Roles Values('Vender');
Insert Into Roles Values('Bodegero');
Insert Into Roles Values('Supervisor');

Select * From Roles;

Delete From Roles Where Id_Rol = 1;


Insert Into Usuarios Values ('David Antonio Estrada Guevara','DAEG@gmail.com',4)
Insert Into Usuarios Values ('David Antonio','DA@gmail.com',2)
Insert Into Usuarios Values ('David Estrada','DE@gmail.com',3)
Insert Into Usuarios Values ('David Antonio Estrada ','DAE@gmail.com',3)

Select * From Usuarios;

Select Nombre,email,Id_rol From usuarios;


use BDAsistente;

Create Table Persona(
	ID Int Not Null,
	Nombre Varchar(20) Not Null,
	Apellido Varchar(20) Not Null,
	Edad Int,
);

Select * From Persona;

Insert Into Persona Values(1,'Rosa','Gallardo',24);
Insert Into Persona(ID,Nombre,Apellido,Edad) Values(2,'Valeria','Rivera',21);


Alter Table Persona 
Alter Column Edad Int Not Null;


Create Table Persona2(
	ID Int Not Null Unique,
	Nombre Varchar(20) Not Null,
	Apellido Varchar(20) Not Null,
	Edad Int
);

--Drop Table Persona2;

Select * From Persona2;

Insert Into Persona2 Values(1,'Rosa','Gallardo',24);
Insert Into Persona2 Values(2,'Valeria','Vazquez',25);

Create Table Persona3(
	ID Int Not Null,
	Nombre Varchar(20) Not Null,
	Apellido Varchar(20) Not Null,
	Edad Int
);

Select * From Persona3;

Alter Table Persona3
Add Unique (ID);

Insert Into Persona3 Values(1,'Rosa','Gallardo',24);
Insert Into Persona3 Values(1,'Valeria','Vazquez',25);

Create Table Persona4(
	ID Int Not Null,
	Nombre Varchar(20) Not Null,
	Apellido Varchar(20) Not Null,
	Edad Int
	Constraint UCPersona4 Unique (ID,Apellido)
);

Select * From Persona4;

Insert Into Persona4 Values(1,'Rosa','Gallardo',24);
Insert Into Persona4 Values(2,'Rosa','Gallardo',24);
Insert Into Persona4 Values(1,'Rosa','Ayala',24);
Insert Into Persona4 Values(1,'Valeria','Vazquez',25);


Alter Table Persona4
Drop Constraint UCPersona4;


Create Table Persona5(
	ID Int Primary Key,
	Nombre varchar(20) Not Null,
	Apellidoo Varchar(20) Not Null,
	Edad Int
);


Select * From Persona5;

Insert Into Persona5(ID,Nombre,Apellidoo,Edad) Values(1,'Rosa','Ayala',24);
Insert Into Persona5 Values(1,'Rosa','Ayala',24);


Create Table Persona6(
	ID Int Not Null,
	Nombre Varchar(20) Not Null,
	Apellido Varchar(20) Not Null,
	Edad Int
	Primary key (ID)
);


Create Table Persona7(
	ID Int Not Null,
	Nombre Varchar(20) Not Null,
	Apellido Varchar(20) Not Null,
	Edad Int
);

Alter Table Persona7
Add Primary Key (ID);

Insert Into Persona7 Values(1,'Rosa','Gallardo',24);
Insert Into Persona7 Values(2,'Valeria','Vazquez',25);

Select * From Persona7;


Create Table Persona8(
	ID Int Not Null,
	Nombre Varchar(20) Not Null,
	Apellido Varchar(20) Not Null,
	Edad Int
);

Alter Table Persona8
Add Constraint PKPersena8 Primary Key (ID, Apellido);

Alter Table Persona8
Drop Constraint PKPersena8;


Create Table Ordenes(
	IdOrdenes Int Primary Key Identity(1,1),
	NumeroOrden Int Not Null,
	IdPersona Int Foreign Key References Persona7(ID)
);

Select * From Ordenes;



Insert Into Ordenes Values (1646,1);
Insert Into Ordenes Values (1897,2);

Create Table Ordenes2(
	IdOrdenes Int Primary Key Identity(1,1),
	NumeroOrden Int Not Null,
	IdPersona Int
);

Select * From Ordenes2;

Alter Table Ordenes2
Add Foreign Key (IdPersona) References Persona7(ID);


Create Table Ordenes3(
	IdOrdenes Int Primary Key Identity(1,1),
	NumeroOrden Int Not Null,
	IdPersona Int
);

Select * From Ordenes3;

Alter Table Ordenes3
Add Constraint FKOrdenes3 
Foreign Key (IdPersona) 
References Persona7(ID);

Alter Table Ordenes3
Drop Constraint FKOrdenes3;
