
Create table Productos(
	Id Int Primary Key Identity(1,1),
	Nombre NVarchar(50) Not Null,
	Descripcion NVarchar(200),
	Precio Decimal(18,2) Not Null
);

Select * From Productos;

Insert Into Productos Values ('Teclado','Teclado mecanico negro maxell',29.99);

Insert Into Productos Values ('Mouse','Mouse hergonomico negro maxell',14.99);

Select * From Productos
Where Id = 2;

Select Nombre From Productos;


Update Productos
Set Nombre = 'Teclado Garming',
	Descripcion = 'Teclado Garming luces led, negro maxell',
	Precio = 39.99
Where Id = 1;


Delete From Productos
Where Id = 2;



Select * From Orden2;

Select * From Cliente2;

Select * From Empleado2;

Select * From Repartidor2;

Select * From Orden;

Select * From Cliente;

Select * From Empleado;




Select * From 
Producto2 
--Inner Join Categoria2 On Categoria2.IdCategoria = Producto2.CategoriaId
Inner Join Categoria2 On Producto2.CategoriaId = Categoria2.IdCategoria;

Select NomProducto, Categoria2.NomCategoria, Precio From 
Producto2 
Inner Join Categoria2 On Producto2.CategoriaId = Categoria2.IdCategoria;

Select Producto2.NomProducto, Categoria2.NomCategoria, Producto2.Precio From 
Producto2 
Inner Join Categoria2 On Producto2.CategoriaId = Categoria2.IdCategoria;

Select P.NomProducto, Cat.NomCategoria, P.Precio From 
Producto2 P
Inner Join Categoria2 Cat On P.CategoriaId = Cat.IdCategoria;

Select P.NomProducto Producto, Cat.NomCategoria Categoria, P.Precio From 
Producto2 P
Inner Join Categoria2 Cat On P.CategoriaId = Cat.IdCategoria;

Select P.NomProducto PRODUCTO, Cat.NomCategoria CATEGORIA, P.Precio PRECIO From 
Producto2 P
Inner Join Categoria2 Cat On P.CategoriaId = Cat.IdCategoria;


Select Cli.NomCliente Negocio, O.IdOrden Orden From 
Cliente2 Cli
Left Join Orden2 O On Cli.IdCliente = O.ClienteId
Order By cli.NomCliente;

Select O.IdOrden, Em.Apellido, Em.Nombre From
Orden2 O
Right Join Empleado2 Em On O.EmpleadoId = Em.IdEmpleado
Order By O.IdOrden;


Select Cli.NomCliente, O.IdOrden From
Cliente2 Cli
Full Outer Join Orden O On Cli.IdCliente = O.ClienteId
Order By Cli.NomCliente;

Select * From
Cliente2 CliA, Cliente2 CliB
Where CliA.IdCliente <> CliB.IdCliente
And CliA.CiudadId = CliB.CiudadId
Order By CliA.CiudadId;


Select * From Producto2;


 Select P2.NomProducto,Prov.NomProveedor, Prov.ContactoPro , cat.NomCategoria, cat.Descripcion,P2.Unidades, P2.Precio, p2.UnidadInStock, c2.NomCiudad From 
 Producto2 P2
 Inner Join Categoria2 Cat On P2.CategoriaId = Cat.IdCategoria
 Inner Join Proveedor2 Prov On P2.ProveedorId = Prov.IdProveedor
 Inner Join Ciudad2 c2 ON Prov.CiudadId = c2.IdCiudad;

 Select cli.NomCliente, ci.NomCiudad, cp.CodPostal, p.NomPais
 From Cliente2 Cli 
 Join Ciudad2 ci On Cli.CiudadId = ci.IdCiudad
 Join CodPostal2 cp On Cli.CodPostalId = cp.IdCodPostal
 Join Pais2 p On cli.PaisId = p.IdPais;