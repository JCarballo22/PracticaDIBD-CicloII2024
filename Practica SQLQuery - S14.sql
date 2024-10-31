use BDCiclo2_2024;

Create Table Empleado2(
	IdEmpleado Int Primary Key Identity(1,1),
	Nombre Nvarchar(30) Not Null,
	Apellido Nvarchar(30) Not Null,
	Edad TinyInt Check(Edad>=18) Not Null,
	SexoId Int Not Null Foreign Key References Sexo2(IdSexo),
	PuestoId Int Not Null Foreign Key References Puesto2(IdPuesto)
);

Create Table Categoria2(
	IdCategoria Int Not Null Primary Key Identity(1,1),
	NomCategoria Nvarchar(50) Not Null Unique,
	Descripcion NVarchar(100) Not Null
);

Create Table Proveedor2(
	IdProveedor Int Primary key Identity(1,1),
	NomProveedor NVarchar(40) Not Null Unique,
	ContactoPro NVarchar(40) Not Null,
	Telefono Int Not Null,
	CiudadId Int Not Null Foreign Key References Ciudad2(IdCiudad),
	PaisId Int Not Null Foreign Key References Pais2(IdPais)
);

Create Table Producto2(
	IdProducto Int Primary Key Identity(1,1),
	NomProducto NVarchar(50) Not Null Unique,
	ProveedorId Int Not Null Foreign key References Proveedor2(IdProveedor),
	CategoriaId Int Not Null Foreign Key References Categoria2(IdCategoria),
	Unidades varchar(25) Not Null,
	Precio Real Not Null,
	UnidadInStock Int Not Null
);

Create Table Repartidor2(
	IdRepartidor Int Primary Key Identity(1,1),
	Nombre Nvarchar(40) Not Null Unique,
	Telefono Int Not Null,
	Correo Nvarchar(60) Not Null
);

Create Table Orden2(
	IdOrden Int Primary Key Identity(1,1),
	ClienteId Int Not Null Foreign Key References Cliente2(IdCliente),
	EmpleadoId Int Not Null Foreign Key References Empleado2(IdEmpleado),
	RepartidorId Int Not Null Foreign Key References Repartidor2(IdRepartidor),
	OrdenFecha Date Default (GetDate()) Not Null
);


Create Table DetalleOrden2(
	IdDetalleOrden Int Primary Key Identity(1,1),
	OrdenId Int Not Null Foreign Key References Orden2(IdOrden),
	ProductoId Int Not Null Foreign Key References Producto2(IdProducto),
	Cantidad Float Not Null,
);

Select * From Empleado2;
Select * From Cliente2;
Select * From Ciudad2;
Select * From Pais2;
Select * From CodPostal2;
Select * From Puesto2;
Select * From Categoria2;
Select * From Producto2;
Select * From Repartidor2;
Select * From Orden2;
Select * From DetalleOrden2;
select * From Proveedor2;


Select * From Producto2
Order By Precio;

Select * From Producto2
Order By Precio asc;

Select * From Producto2
Order By Precio desc;

Select * From Pais2
Order By NomPais; --asc

Select * From Pais2
Order By NomPais desc;


Select * From Cliente2
Order By PaisId desc, Representante asc;

Select * From Cliente
Order By Pais desc, Representante asc;

Select * From Cliente
Order By Pais desc, Representante desc;

Select * From Cliente
Order By Pais asc, Representante desc;

Select * From Cliente
Order By Pais asc, Representante asc;


Select * From Cliente2 
where PaisId = 4
--And Representante like 'd%';
And Representante like '%d';

Select * From Cliente2 
where PaisId = 3
--And Representante like 'j%';
And Representante like '%th%';

Select * From Cliente2 
where PaisId = 5
And CiudadId = 14
And CodPostalId = 2;

Select * From Cliente2 
where PaisId = 1
And CiudadId = 1
And CodPostalId = 1;


Select * From Cliente2
Where PaisId = 1 Or PaisId = 5;

Select * From Cliente2
Where PaisId = 2 Or PaisId = 5;

Select * From Cliente2
Where Not PaisId = 1;

Select * From Cliente2
Where PaisId = 1;

Select * From Cliente2
Where NomCliente Not Like 'M%'

Select * From Cliente2
Where NomCliente Like 'M%'

Select * From Proveedor2
Where IdProveedor Between 2 and 4;

Select * From Proveedor2
Where IdProveedor Not Between 2 and 4;

Select * From Cliente2
Where CiudadId In(1,8,20);

Select * From Cliente2
Where CiudadId Not In(1,8,20);

Select * From Cliente2;

Update Cliente2 Set Representante = 'Hilda López'
Where IdCliente = 5;

Update Cliente2 Set Representante = 'Diego Armando Maradona',
Direccion = 'Calle Avenidad suroeste, buenos Aires'
Where IdCliente = 15;


Select Top 6 * From Cliente2;


Select Min(Precio) From Producto2;

Select Max(Precio) From Producto2;

Select Min(IdPais) From Pais2;

Select Max(IdPais) From Pais2;

Select * From Producto2;

Select Count(NomProducto) From Producto2;

Select Count(PaisId) From Cliente2;

Select Count(*) From Cliente2
Where PaisId = 1;

