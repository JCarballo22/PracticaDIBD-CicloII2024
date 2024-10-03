use BDCiclo2_2024;

Create Table Cliente(
	ClienteId Int Primary Key Identity (1,1),
	NombreCliente NVarchar(100) Not Null,
	Representante NVarchar(50) Not Null,
	Direccion NVarchar(100),
	Ciudad NVarchar(20),
	CodigoPostal Int,
	Pais NVarchar(15)
);

Create Table Ciudad(
	CiudadId Int Primary Key identity(1,1),
	NombreCiudad NVarchar(20)
);

Create Table Pais(
	PaisId Int Primary Key Identity(1,1),
	NombrePais NVarchar(15)
);

Create Table Cliente2(
	ClienteId Int Primary Key Identity(1,1),
	NombreCliente NVarchar(100) Not Null,
	Representante NVarchar(50) Not Null,
	Direccion NVarchar(100),
	IdCiudad Int,
	CodigoPosta Int,
	IdPais Int,
	Foreign Key (IdCiudad)  references Ciudad(CiudadId),
	Foreign Key (IdPais)  references Pais(PaisId)
);




INSERT INTO Cliente (NombreCliente, Representante, Direccion, Ciudad, CodigoPostal, Pais)
VALUES 
('Central Tech', 'Roberto Mejía', 'Blvd. Los Próceres 45', 'San Salvador', 1101, 'El Salvador'),
('Advanced Solutions', 'María López', 'Calzada Roosevelt 1234', 'Ciudad de Guatemala', 01011, 'Guatemala'),
('Honduras Innovate', 'Oscar Ramírez', 'Av. Circunvalación 56', 'Tegucigalpa', 11101, 'Honduras'),
('United Technologies', 'John Smith', '1234 Elm St.', 'New York', 10001, 'Estados Unidos'),
('Berlin Systems', 'Hans Müller', 'Karl-Marx-Straße 50', 'Berlín', 10965, 'Alemania'),
('Paris IT Services', 'Chloé Dubois', 'Rue de Rivoli 150', 'París', 75001, 'Francia');

INSERT INTO Cliente (NombreCliente, Representante, Direccion, Ciudad, CodigoPostal, Pais)
VALUES 
('TechCorp', 'Juan Pérez', 'Av. Principal 123', 'Monterrey', 64000, 'México'),
('Innovate Solutions', 'Ana García', 'Calle 45 No. 12', 'Guadalajara', 44100, 'México'),
('Global Networks', 'Carlos Santos', 'Cra. 9 No. 115', 'Bogotá', 110111, 'Colombia'),
('Smart Systems', 'Luis Martínez', 'Av. La Plata 223', 'Buenos Aires', 1428, 'Argentina'),
('NextGen Technologies', 'Elena Gómez', '123 King St.', 'Toronto', 245135, 'Canadá'),
('Digital Dreams', 'Marta Sánchez', 'Calle Reforma 18', 'Ciudad de México', 15000, 'México'),
('Tech Horizons', 'Rafael Ramírez', 'Rua Augusta 400', 'São Paulo', 12345678, 'Brasil'),
('BlueOcean IT', 'Sofía Fernández', 'Calle Larios 5', 'Málaga', 29015, 'España'),
('ProData Analytics', 'David González', 'Paseo de la Reforma 150', 'Ciudad de México', 06600, 'México'),
('FutureVision', 'Patricia Silva', 'Calle 8 No. 7-30', 'Lima', 15001, 'Perú');

Select * From Cliente;

INSERT INTO Pais (NombrePais)
VALUES 
('México'),
('Colombia'),
('Argentina'),
('Canadá'),
('Brasil'),
('España'),
('Perú'),
('El Salvador'),
('Guatemala'),
('Honduras'),
('Estados Unidos'),
('Alemania'),
('Francia');


INSERT INTO Ciudad (NombreCiudad)
VALUES 
('Monterrey'),
('Guadalajara'),
('Bogotá'),
('Buenos Aires'),
('Toronto'),
('São Paulo'),
('Málaga'),
('Lima'),
('San Salvador'),
('Ciudad de Guatemala'),
('Tegucigalpa'),
('New York'),
('Berlín'),
('París');

INSERT INTO Cliente2 (NombreCliente, Representante, Direccion, IdCiudad, CodigoPosta, IdPais)
VALUES 
('TechCorp', 'Juan Pérez', 'Av. Principal 123', 1, 64000, 1),
('Innovate Solutions', 'Ana García', 'Calle 45 No. 12', 2, 44100, 1),
('Global Networks', 'Carlos Santos', 'Cra. 9 No. 115', 3, 110111, 2),
('Smart Systems', 'Luis Martínez', 'Av. La Plata 223', 4, 1428, 3),
('NextGen Technologies', 'Elena Gómez', '123 King St.', 5, 36524, 4),
('Digital Dreams', 'Marta Sánchez', 'Calle Reforma 18', 8, 15000, 1),
('Tech Horizons', 'Rafael Ramírez', 'Rua Augusta 400', 6, 12345678, 5),
('BlueOcean IT', 'Sofía Fernández', 'Calle Larios 5', 7, 29015, 6),
('ProData Analytics', 'David González', 'Paseo de la Reforma 150', 8, 06600, 1),
('FutureVision', 'Patricia Silva', 'Calle 8 No. 7-30', 8, 15001, 7),
('Central Tech', 'Roberto Mejía', 'Blvd. Los Próceres 45', 9, 1101, 8),
('Advanced Solutions', 'María López', 'Calzada Roosevelt 1234', 10, 01011, 9),
('Honduras Innovate', 'Oscar Ramírez', 'Av. Circunvalación 56', 11, 11101, 10),
('United Technologies', 'John Smith', '1234 Elm St.', 12, 10001, 11),
('Berlin Systems', 'Hans Müller', 'Karl-Marx-Straße 50', 13, 10965, 12),
('Paris IT Services', 'Chloé Dubois', 'Rue de Rivoli 150', 14, 75001, 13);


Use BDCiclo2_2024;

Select * From Cliente;


Select * From Cliente
Where ClienteId = 5;

Select * From Cliente
Where Ciudad = 'Ciudad de México';

Select * From Cliente
Where Pais = 'España';

Select * From Cliente
Where ClienteId > 5;

Select * From Cliente
Where CodigoPostal > 1500;

Select * From Cliente
Where ClienteId < 7;

Select * From Cliente
Where CodigoPostal < 1500;


Select * From Cliente
Where ClienteId >= 5;

Select * From Cliente
Where ClienteId <= 7;


Select * From Cliente
where ClienteId <> 9;

Select * From Cliente
Where Ciudad <> 'Monterrey';

Select * From Cliente
Where Ciudad <> 'Ciudad de México';

Select * From Cliente
Where Pais <> 'méxico';

Select * From Cliente
Where ClienteId Between 6 and 14;

Select * From Cliente
Where CodigoPostal Between 2000 and 17000;


Select * From Cliente
Where Representante Like 'J%';

Select * From Cliente
Where Representante Like '%a';

Select * From Cliente
Where Representante Like '%elena%';

Select * From Cliente
Where Representante Like '%ci%';

Select * From Cliente
Where Representante Not Like 'C%';

Select * From Cliente
Where Representante Like '_a%';

Select * From Cliente
Where Representante Not Like '_a%';

Select * From Cliente
Where Representante Like '__a%';

Select * From Cliente
Where Representante Not Like '__a%';

Select * From Cliente
Where ClienteId In(2,9,12,15);

Select * From Cliente
Where pais In('El Salvador','España','Colombia','México');



Select * From Cliente;

Select * From Cliente2;

Select * From Ciudad;

Select * From Pais;

Update Ciudad set NombreCiudad = 'San Miguel'
Where CiudadId = 8;
