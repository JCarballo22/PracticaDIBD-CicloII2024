use BDCiclo2_2024;

--HIVING
select * From Cliente;

Select Count(ClienteId), Pais 
From Cliente As Cl
Group By Pais

Select Count(ClienteId), Pais 
From Cliente As Cl
Group By Pais
Having count(ClienteId) > 1;

Select Count(IdCliente), PaisId 
From Cliente2 As Cl
Group By PaisId
Having count(IdCliente) > 2;

Select Count(IdCliente) As Total, ps.NomPais Paises
From Cliente2 As Cl
Join Pais2 ps On Cl.PaisId = ps.IdPais
Group By ps.NomPais
Having count(IdCliente) > 1;

select * From Cliente2;

Select * From Pais2;

Select em.Apellido, count(o.IdOrden) As NumeroOrdenes 
From (Orden2  o
Inner Join Empleado2 em On o.EmpleadoId = em.IdEmpleado)
Group By em.Apellido
Having count(o.IdOrden) = 1;

Select * From Orden2;

Select em.Nombre, em.Apellido, count(o.IdOrden) As NumeroOrdenes 
From (Orden2  o
Inner Join Empleado2 em On o.EmpleadoId = em.IdEmpleado)
Where em.Apellido = 'Martínez'
Group By em.Apellido, em.Nombre
Having count(o.IdOrden) = 1;

--EXISTS
Select pv.NomProveedor
From Proveedor2 pv
Where Exists 
(Select pr.NomProducto 
From Producto2 pr
Where pr.ProveedorId = pv.IdProveedor);

Select * From Proveedor2;

Select * From Producto2;

Select pv.NomProveedor
From Proveedor2 pv
Where Exists 
(Select pr.NomProducto 
From Producto2 pr
Where pr.ProveedorId = pv.IdProveedor and Precio > 5);


Select pv.NomProveedor
From Proveedor2 pv
Where Exists 
(Select pr.NomProducto 
From Producto2 pr
Where pr.ProveedorId = pv.IdProveedor and Precio > 5 And UnidadInStock > 49);

Select * From Producto2;
Select * From DetalleOrden2;

Select pr.NomProducto 
From Producto2 pr
Where  pr.IdProducto = ANY
(Select pr.IdProducto
From DetalleOrden2 do
Where do.Cantidad = 5);

Select ALL pr.NomProducto 
From Producto2 pr;

Select pr.NomProducto 
From Producto2 pr
Where  pr.IdProducto = All
(Select pr.IdProducto
From DetalleOrden2 do
Where do.Cantidad = 100);

use BDCiclo2_2024;

Select * from Cliente2;

Select * Into ClienteBackup
From Cliente2;

Select * From ClienteBackup;

Select NomCliente, Representante Into ClienteBackup2
From Cliente2

Select * From ClienteBackup2;

Select * Into ClienteMexico
From Cliente2
Where PaisId = 4;

Select * From ClienteMexico;

select * From Pais2;

select * From Cliente;

Select * Into ClienteMexico2
From Cliente
Where Pais = 'México';

Select * From ClienteMexico2;

drop table ClienteMexico2;

select * From Proveedor2;


Select pr.NomProveedor, p.NomProducto Into ProveedorBackup
From Proveedor2 pr
Left Join Producto2 p On pr.IdProveedor = p.ProveedorId;

Select * From ProveedorBackup;


Insert Into Cliente (NombreCliente, Representante, Ciudad, Pais)
Select NombrePro, Representante, Ciudad, Pais From Proveedor

select * From Proveedor;
Select * From  Cliente;

Insert Into Cliente (NombreCliente,Representante,Ciudad,pais)
select NombrePro,Representante,ciudad, pais From Proveedor
Where Pais = 'El Salvador';

