use BDCiclo2_2024;

Select * From Cliente;


Create Table Empleado(
	IdEmpleado Int Primary Key Identity(1,1),
	Nombre Varchar(20) Not Null,
	Apellido Varchar(20) Not Null,
	Edad TinyInt Check(Edad>=18) Not Null,
	Sexo Char(1) Not Null,
	Puesto NVarchar(15) Not Null
);

Select * From Empleado;

Insert Into Empleado Values('David','Estrada',23,'M','Marketing');

Create Table Categoria(
	IdCategoria Int Primary Key Identity(1,1),
	NombreCat Varchar(20) Not Null Unique,
	Descripcion Varchar(100) Not Null
);
--drop table Categoria;

Select * From Categoria;

Insert Into Categoria Values('Tecnológia','Posee una diversidad de dispositivos y aparatos electronicos');
Insert Into Categoria Values('Bebida','Posee una diversidad de bebidad en diferentes presentaciones');

Create Table Proveedor(
	IdProveedor Int Primary Key Identity(1,1),
	NombrePro Varchar(35) Not Null Unique,
	Representante Varchar(50) Not null,
	Telefono Int Not Null,
	Ciudad Varchar(15) Not Null,
	Pais Varchar(15) Not Null
);

Select * From Proveedor;

Insert Into Proveedor Values ('La Constancia','Jorge',74874854,'San Salvador','El Salvador');

Create Table Producto(
	IdProducto Int Primary Key Identity(1,1),
	Nombre Varchar(50) Not Null Unique,
	ProveedorId Int Not Null Foreign Key References Proveedor(IdProveedor),
	CategoriaId Int Not Null Foreign Key References Categoria(IdCategoria),
	Unidades Varchar(10) Not Null,
	Precio Real Not Null,
	UnidadInStock Int Not Null
);

Select * From Producto;

Insert Into Producto Values ('Gaciosas',1,2,'24 unidad',0.70,48);

Create Table Repartidor(
	IdRepartidor Int Primary Key Identity(1,1),
	Nombre Varchar(35) Not Null,
	Apellido Varchar(30) Not Null,
	Telefono Int Not Null Unique,
	Correo Varchar(50) Not Null Unique
);

Select * From Repartidor;

Insert Into Repartidor Values('Anderson','Tejada',74874854,'anderson123@gmail.com');

Create Table Orden(
	IdOrden Int Primary Key Identity(1,1),
	ClienteId Int Not Null,
	EmpleadoId Int Not Null,
	FechaOrden Date Not Null default(GetDate()),
	RepartidorId Int Not Null Foreign Key References Repartidor(IdRepartidor),
	Foreign Key (EmpleadoId) References Empleado(IdEmpleado),
	Foreign Key (ClienteId) References Cliente(ClienteId)
);

Select * From Orden;

Insert Into Orden Values (15,1,'2024/10/3',1);
Insert Into Orden(ClienteId,EmpleadoId,RepartidorId) Values (12,1,1);

Create Table DetalleOrden(
	IdDetalleOrden Int Primary Key Identity(1,1),
	OrdenId Int Not Null Foreign Key References Orden(IdOrden),
	IdProducto Int Not Null Foreign Key References Producto(IdProducto),
	Cantidad Float Not Null
);

Select * From DetalleOrden;

Insert Into DetalleOrden Values (1,1,24);