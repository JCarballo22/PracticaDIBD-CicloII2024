Use BDPrincial;

Select * From Empleados;

Alter Table Empleados Add Fecha_Contratacion Date;

Insert Into Empleados 
values 
(18,'Anderson','Tejada','M',23,79854853,'Calle 234','2001-12-25','650.00',1,'Supervisor','2024-01-15');

Alter Table Empleados drop Column Fecha_Contratacion;

Select * From Empleados;


Select * From Empleados Where IdEmpleado = 10;
Select * From Empleados Where Nombre = 'Marisol';

Select * From Empleados Where Edad != 21;
Select * From Empleados Where Apellido <> 'Tejada';

Select * From Empleados Where Edad < 21;
Select * From Empleados Where Edad > 21;

Select * From Empleados Where Edad <= 21;
Select * From Empleados Where Edad >= 21;

use BDPrincial;

select * From Empleados;

--Consultas utilizando la claula where
Select nombre, Apellido, genero From Empleados Where edad = 33;
--Select * From Empleados Where edad = 33;

Select genero From Empleados --Where edad = 33;
Select Salario, Cargo From Empleados Where edad = 33;

/*
Select nombre, Apellido, genero From Empleados Where edad = 33;
Select nombre, Apellido, genero From Empleados Where edad = 33;
Select nombre, Apellido, genero From Empleados Where edad = 33;*/
Select nombre, Apellido, genero From Empleados Where edad = 33;


exec sp_rename 'Empleados.IdEmpleado', 'ID';
exec sp_rename 'Empleados.Genero', 'Sexo';
exec sp_rename 'Empleados.Sexo', 'SEXO';
exec sp_rename 'Empleados.Nombre', 'NOMBRE';
exec sp_rename 'Empleados.Apellido', 'APELLIDO';
exec sp_rename 'Empleados.Edad', 'EDAD';
exec sp_rename 'Empleados.Telefono', 'TELEFONO';
exec sp_rename 'Empleados.Direccion', 'DIRECCION';
exec sp_rename 'Empleados.Fecha_Nacimiento', 'F_NACIMIENTO';
exec sp_rename 'Empleados.Salario', 'SALARIO';
exec sp_rename 'Empleados.Activo', 'ACTIVO';
exec sp_rename 'Empleados.Cargo', 'CARGO';

--practica 28/08/2024
Select * From Empleados;

Update Empleados set Cargo = 'Marketing' where Id = 1;

Update Empleados set edad = 28 where Nombre = 'Pedro';

Update Empleados set Activo = 0 where id in(5,9,11,12);

Select * From Empleados where id in(6,10,14);

delete from Empleados where id = 2;

delete from Empleados Where id in(5,8,11);


Create Table Estudiante(
	ID Int Primary key,
	Nombre Varchar(30) Not Null,
	Apellido Varchar(30) Not Null,
	Telefono Int,
	Correo nvarchar(50)
);

Select * From Estudiante;

Insert Into Estudiante Values (1,'Yesenia','Rivera',23786478,'yrivera@gmail.com');
Insert Into Estudiante Values (2,'Yesenia','Rivera',23786478,'yrivera@gmail.com');
Insert Into Estudiante (ID,Nombre,Apellido,Correo) Values (3,'Brandon','Alvarado','balvarado@gmail.com');
Insert Into Estudiante (ID,Nombre,Apellido,Telefono) Values (4,'Josue','Alvarez',78486856);


