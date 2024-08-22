use BDPrincial;

Create Table Empledos(
	IdEmpleado Int,
	Nombre Varchar(30),
	Apellido Varchar(20),
	Genero Char(2),
	Edad TinyInt,
	Telefono Numeric(8),
	Direccion NVarchar(100),
	Fecha_Nacimiento Date,
	Salario Decimal (5,2),
	Activo Bit
);

Select * From Empledos;

exec sp_help empledos;

Insert Into Empledos
values
(15, 'Hugo', 'Orozco','M', 23, 99897487,'Calle 789', '1980-03-16', 210.00, 0)

insert into Empledos values (1, 'Juan', 'Pérez','M',25,79848687, 'Calle 123','1978-06-15',2500.00,1);
 insert into empledos values (2, 'María', 'López','F', 30, 98763210, 'Avenida 456', '1980-03-20', 300.00, 1);
 insert into empledos values (3, 'Carlos', 'González', 'M',28, 55555555, 'Calle 789', '1979-11-10', 280.00, 1);
 insert into empledos values (4, 'Ana', 'Martínez','F', 35, 99887770, 'Avenida 012', '1977-09-05', 350.00, 0);
 insert into empledos values (5, 'Pedro', 'Sánchez','M', 22, 11122234, 'Calle 567', '1980-01-25', 200.00, 1);
 insert into empledos values (6, 'Laura', 'Ramírez','F', 31, 44444444, 'Avenida 890', '1978-07-12', 320.00, 1);
 insert into empledos values (7, 'Luis', 'Torres','M', 29, 77777777, 'Calle 345', '1979-04-18', 270.00, 0);
 insert into empledos values (8, 'Carmen', 'Hernández','F', 27, 66666666, 'Avenida 678', '1980-02-03', 260.00, 0);
 insert into empledos values (9, 'Jorge', 'García','M', 33, 22233445, 'Calle 901', '1977-12-27', 340.00, 0);
 insert into empledos values (10, 'Silvia', 'Lara', 'F',24, 88899000, 'Avenida 234', '1980-05-09', 220.00, 1);
 insert into empledos values (11, 'Roberto', 'Rojas','M', 26, 33344556, 'Calle 567', '1979-02-14', 240.00, 0);
 insert into empledos values (12, 'Patricia', 'Cruz','F', 32, 22233444, 'Avenida 890', '1978-08-21', 310.00, 1);
 insert into empledos values (13, 'Daniel', 'Gómez','M', 29, 55663778, 'Calle 123', '1979-06-06', 280.00, 1);
 insert into empledos values (14, 'Sara', 'Vargas','F', 34, 66677889, 'Avenida 456', '1977-04-01', 330.00, 1);
 insert into empledos values (15, 'Hugo', 'Orozco','M', 23, 99988776, 'Calle 789', '1980-03-16', 210.00, 0);



 Use BDPrincial;

Select * From Empledos;

Select nombre From Empledos;

Select * From Sys.tables;

exec sp_rename 'Empledos', 'Usuarios';

Select * From Usuarios;

Insert Into Usuarios 
values
(16,'Felipe','Ignacio','M', 19,46796461,'colonia calvario','1999-12-12',451.00,1);

exec sp_rename 'Usuarios', 'Empleados';

Select * From Empleados;

create table prueba(campo int);

Select * From Prueba;

Insert Into Prueba values (8);

drop table prueba;


Select Nombre, Apellido From Empleados;

Select Nombre, Apellido, Salario From Empleados;

Select * From Empleados Where Nombre = 'Marisol';

Select * From Empleados Where edad = 21;

Select nombre, edad, genero From empleados Where edad = 29;


truncate table prueba;

Select * From prueba;

Delete from prueba where campo = 7;

Delete from prueba;

Delete from Empleados Where IdEmpleado = 3;

Select * From Empleados;

alter table Empleados add Cargo nvarchar(20);

Insert Into Empleados 
values
(17,'Mario','Gonzales','M',35,78484848,'primera calle','1986-3-5',555.55,1,'Vendedor');