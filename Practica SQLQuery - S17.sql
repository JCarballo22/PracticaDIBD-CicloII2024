
Select * From Pais2;

Select Count(*) As Total_Filas
From Pais2;

Select Count(*) TotalFilas
From Pais2;

Select Count(NomPais) 
From Pais2; 

Select Count(NomPais) TotalNombres
From Pais2; 

Select Sum(UnidadInStock) TotalUnidades
From Producto2;

Select Sum(Precio) TotalPrecio
From Producto2


Select Avg(UnidadInStock) 
From Producto2;

Select Avg(Precio) 
From Producto2;

Select * From Producto2;

Select Min(precio) 
From Producto2;

Select Max(precio)
From Producto2;


Select Count(ContactoPro), NomProveedor
From Proveedor2
Group by NomProveedor;

Select Count(ContactoPro), NomProveedor
From Proveedor2
Group by NomProveedor;

Select Count(IdCliente), PaisId 
From Cliente2
Group By PaisId
Order By Count(IdCliente) Asc;

Select Count(IdCliente), PaisId 
From Cliente2
Group By PaisId
Order By Count(IdCliente) desc;

Select Count(IdCliente), NomCliente 
From Cliente2
Group By NomCliente
Order By Count(IdCliente) Asc;

Select Count(IdCliente), Representante
From Cliente2
Group By Representante
Having count(IdCliente) = 1
Order By Count(IdCliente);

Select Count(IdCliente), Representante
From Cliente2
Group By Representante
Having Representante = 'Agustin Menjivar'
Order By Count(IdCliente);

Select * From Ciudad;
Select * From Pais;

Select Count(CiudadId), NombreCiudad  
From Ciudad
Group By NombreCiudad
Having NombreCiudad = 'Bogotá';

Select Cl2.NomCliente, Count(cl2.CiudadId), p.NombrePais
From (Cliente2 Cl2
Join pais p On Cl2.PaisId = p.PaisId)
Group By cl2.NomCliente, p.NombrePais
Order by p.NombrePais;

Select Cl2.NomCliente, p.NombrePais
From (Cliente2 Cl2
Join pais p On Cl2.PaisId = p.PaisId)
Group By p.NombrePais, cl2.NomCliente
Having p.NombrePais = 'México';

Select Count(cl2.CiudadId), p.NombrePais
From (Cliente2 Cl2
Join pais p On Cl2.PaisId = p.PaisId)
Group By cl2.CiudadId, p.NombrePais
Order by p.NombrePais;




Use BDCiclo2_2024;

Select Count(ClienteId), Pais
From Cliente
Group By Pais;

Select Count(ClienteId), Pais
From Cliente
Group By Pais
Order By Pais desc;


Select E2.Apellido, count(O2.IdOrden) As NumOrdernes
From (Orden2 O2
Join Empleado2 E2 On O2.EmpleadoId = E2.IdEmpleado)
Group By E2.Apellido
Having count(o2.IdOrden) >= 2;


Select * 
From Proveedor Pv
Where Exists (Select * from Producto P
				Where P.IdProducto = Pv.IdProveedor 
				and Precio < 5);

Select pv.NomProveedor 
From Proveedor2 Pv
Where Exists (Select P.NomProducto from Producto2 P
				Where P.IdProducto = Pv.IdProveedor 
				and Precio < 5);

Select Nombre 
From Producto
Where IdProducto = Any
(Select IdProducto From DetalleOrden
Where Cantidad < 2);

Select Nombre
From Producto
Where IdProducto = All
(Select IdProducto From DetalleOrden
Where Cantidad < 2);