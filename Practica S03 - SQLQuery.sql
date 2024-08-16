use BasedeDatosAsistente;

create database BDPrueba;

use BDPrueba;

Drop database BasedeDatosAsistente;

Select * from sys.databases;

alter database BDPrueba modify name = BDPrincial;


use BDPrincial;

Create table EjChar (
	Codigo Char(5)
);


insert into EjChar (Codigo) values ('AE342');
Insert Into EjChar (Codigo) values ('md74');
INSERT INTO EjChar (Codigo) VALUES ('B65');

Insert Into EjChar 
(Codigo) 
values 
('12345'),('dfER'),('L');

Select * From EjChar;
sELECT * fROM EjChar;


Create Table EjVarchar(
	Nombre Varchar(30)
);

Insert Into EjVarchar (Nombre) 
Values ('Kevin Figueroa');

Insert Into EjVarchar 
(Nombre)
Values
('Anderson Mauricio'),('Rosa Marisol Guadalupe');

Select * From EjVarchar;


Create Table EjText (
	Descripcion Text
);

Insert Into EjText 
(Descripcion)
Values
('Este es un texto largo que puede contener muchas palabras');
Insert Into EjText
(Descripcion)
Values
('Este es otro texto largo'),('A');

Select * From EjText;


Create Table EjNChar (
	Codigo NChar(5)
);

Insert Into EjNChar 
(Codigo)
Values
(N'AbC12');

Insert Into EjNChar
(Codigo)
Values
('1598');

Insert Into EjNChar
(Codigo)
Values
('G'),('T1');

Select * From EjNChar;

use BDPrincial;

select * from sys.databases;

select * from ejChar;

Create Table EjNVarChar(
	Nombre Nvarchar(30)
);

Insert Into EjNVarchar 
(Nombre)
Values
('Valeria Sarahi');

Insert Into EjNVarChar
(Nombre)
Values
(N'Brando Geovanny');

Insert Into EjNVarChar
(Nombre)
Values
('David Antonio Leonel'),('Francisco Mauricio Geovanny');

select * From EjNVarChar;

Create Table EjBit (
	Activo Bit
);

Insert Into EjBit 
(Activo)
Values
(1),(0);

Select * From EjBit;

Create Table EjInt(
	Telefono int
);

Insert Into EjInt 
(Telefono)
Values
(78498652);

Insert Into EjInt
(Telefono)
Values
(23154487),(79865142),(79854863);

Select * From Ejint;


Create Table EjBigInt(
	Contador Bigint
);

Insert Into EjBigInt
(Contador)
Values
(982648562145986464),(-97841638746341354);

Select * From EjBigInt;

Create Table EjDecimal(
	Precio Decimal(10,2)
);

Insert Into EjDecimal
(Precio)
Values
(999.99),(7845.45),(1468.30),(1.10);

Insert Into EjDecimal
(Precio)
Values
(12345678.357);

select * From EjDecimal;

Create Table EjNumeric(
	Ventas Numeric(15,4)
);

Insert Into EjNumeric
(ventas)
Values
(10000.245),(68452.332);

Select * From EjNumeric;

Create Table EjMoney(
	Ingreso Money
);

Insert Into EjMoney
(Ingreso)
Values
(5000.32),(7845.10);

Select * From EjMoney;


Create Table EjFloat(
	Tasa Float
);

Insert Into EjFloat 
(Tasa)
Values
(0.2345613),(1234.1546748);

Select * From EjFloat;

Create Table EjTinyInt(
	Edad TinyInt
);

Insert Into EjTinyInt
(Edad)
Values
(25),(18),(76),(190),(255);

Select * From EjTinyInt;


Create Table EjSmallMoney(
	Salario SmallMoney
);

Insert Into EjSmallMoney
(Salario)
Values
(365.00),(800.50),(14000.00),(2500.30);

Select * From EjSmallMoney;


Create Table EjReal (
	Interes Real
);

Insert Into EjReal 
(Interes)
Values
(3.14),(0.073);

Select * From EjReal;

Create Table EjDate(
	FechaNacimiento Date
);

Insert Into EjDate
(FechaNacimiento)
Values
('2024-08-14'),('2022-02-22'),('1987-6-19');

Select * From EjDate;

Create Table EjDateTime(
	FechaHora DateTime
);

Insert Into EjDateTime
(FechaHora)
Values
('2024/08/14 8:25:25'),('2021-01-01 11:00:03'),('2019-10-31');

Insert Into EjDateTime
(FechaHora)
Values
('2024/08/15 8:30:30:561');

Select * From EjDateTim
