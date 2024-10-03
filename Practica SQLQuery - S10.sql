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
('Central Tech', 'Roberto Mej�a', 'Blvd. Los Pr�ceres 45', 'San Salvador', 1101, 'El Salvador'),
('Advanced Solutions', 'Mar�a L�pez', 'Calzada Roosevelt 1234', 'Ciudad de Guatemala', 01011, 'Guatemala'),
('Honduras Innovate', 'Oscar Ram�rez', 'Av. Circunvalaci�n 56', 'Tegucigalpa', 11101, 'Honduras'),
('United Technologies', 'John Smith', '1234 Elm St.', 'New York', 10001, 'Estados Unidos'),
('Berlin Systems', 'Hans M�ller', 'Karl-Marx-Stra�e 50', 'Berl�n', 10965, 'Alemania'),
('Paris IT Services', 'Chlo� Dubois', 'Rue de Rivoli 150', 'Par�s', 75001, 'Francia');

INSERT INTO Cliente (NombreCliente, Representante, Direccion, Ciudad, CodigoPostal, Pais)
VALUES 
('TechCorp', 'Juan P�rez', 'Av. Principal 123', 'Monterrey', 64000, 'M�xico'),
('Innovate Solutions', 'Ana Garc�a', 'Calle 45 No. 12', 'Guadalajara', 44100, 'M�xico'),
('Global Networks', 'Carlos Santos', 'Cra. 9 No. 115', 'Bogot�', 110111, 'Colombia'),
('Smart Systems', 'Luis Mart�nez', 'Av. La Plata 223', 'Buenos Aires', 1428, 'Argentina'),
('NextGen Technologies', 'Elena G�mez', '123 King St.', 'Toronto', 245135, 'Canad�'),
('Digital Dreams', 'Marta S�nchez', 'Calle Reforma 18', 'Ciudad de M�xico', 15000, 'M�xico'),
('Tech Horizons', 'Rafael Ram�rez', 'Rua Augusta 400', 'S�o Paulo', 12345678, 'Brasil'),
('BlueOcean IT', 'Sof�a Fern�ndez', 'Calle Larios 5', 'M�laga', 29015, 'Espa�a'),
('ProData Analytics', 'David Gonz�lez', 'Paseo de la Reforma 150', 'Ciudad de M�xico', 06600, 'M�xico'),
('FutureVision', 'Patricia Silva', 'Calle 8 No. 7-30', 'Lima', 15001, 'Per�');

Select * From Cliente;

INSERT INTO Pais (NombrePais)
VALUES 
('M�xico'),
('Colombia'),
('Argentina'),
('Canad�'),
('Brasil'),
('Espa�a'),
('Per�'),
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
('Bogot�'),
('Buenos Aires'),
('Toronto'),
('S�o Paulo'),
('M�laga'),
('Lima'),
('San Salvador'),
('Ciudad de Guatemala'),
('Tegucigalpa'),
('New York'),
('Berl�n'),
('Par�s');

INSERT INTO Cliente2 (NombreCliente, Representante, Direccion, IdCiudad, CodigoPosta, IdPais)
VALUES 
('TechCorp', 'Juan P�rez', 'Av. Principal 123', 1, 64000, 1),
('Innovate Solutions', 'Ana Garc�a', 'Calle 45 No. 12', 2, 44100, 1),
('Global Networks', 'Carlos Santos', 'Cra. 9 No. 115', 3, 110111, 2),
('Smart Systems', 'Luis Mart�nez', 'Av. La Plata 223', 4, 1428, 3),
('NextGen Technologies', 'Elena G�mez', '123 King St.', 5, 36524, 4),
('Digital Dreams', 'Marta S�nchez', 'Calle Reforma 18', 8, 15000, 1),
('Tech Horizons', 'Rafael Ram�rez', 'Rua Augusta 400', 6, 12345678, 5),
('BlueOcean IT', 'Sof�a Fern�ndez', 'Calle Larios 5', 7, 29015, 6),
('ProData Analytics', 'David Gonz�lez', 'Paseo de la Reforma 150', 8, 06600, 1),
('FutureVision', 'Patricia Silva', 'Calle 8 No. 7-30', 8, 15001, 7),
('Central Tech', 'Roberto Mej�a', 'Blvd. Los Pr�ceres 45', 9, 1101, 8),
('Advanced Solutions', 'Mar�a L�pez', 'Calzada Roosevelt 1234', 10, 01011, 9),
('Honduras Innovate', 'Oscar Ram�rez', 'Av. Circunvalaci�n 56', 11, 11101, 10),
('United Technologies', 'John Smith', '1234 Elm St.', 12, 10001, 11),
('Berlin Systems', 'Hans M�ller', 'Karl-Marx-Stra�e 50', 13, 10965, 12),
('Paris IT Services', 'Chlo� Dubois', 'Rue de Rivoli 150', 14, 75001, 13);


Use BDCiclo2_2024;

Select * From Cliente;


Select * From Cliente
Where ClienteId = 5;

Select * From Cliente
Where Ciudad = 'Ciudad de M�xico';

Select * From Cliente
Where Pais = 'Espa�a';

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
Where Ciudad <> 'Ciudad de M�xico';

Select * From Cliente
Where Pais <> 'm�xico';

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
Where pais In('El Salvador','Espa�a','Colombia','M�xico');



Select * From Cliente;

Select * From Cliente2;

Select * From Ciudad;

Select * From Pais;

Update Ciudad set NombreCiudad = 'San Miguel'
Where CiudadId = 8;
