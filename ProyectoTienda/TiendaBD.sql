CREATE DATABASE TIENDA;
USE TIENDA;

CREATE TABLE Usuario(
Id_Usuario int NOT NULL auto_increment PRIMARY KEY,
Nombre varchar(255) NOT NULL,
Tipo_Usuario enum("Cliente","Proveedor","Administrador") NOT NULL,
Correo varchar(255) NOT NULL UNIQUE,
Contrasenia varchar(255) NOT NULL,
Num_Documento varchar(20) NOT NULL,
Genero enum("Masculino", "Femenino","Otro") NOT NULL,
Direccion varchar(255) NOT NULL,
Telefono varchar(30) NOT NULL,
Cargo_Admin varchar(100),
Nombre_Empresa varchar(255)
);

CREATE TABLE Camisa(
Id_Camisa int NOT NULL auto_increment PRIMARY KEY,
Marca_Camisa varchar(255) NOT NULL,
Color_Camisa varchar(100) NOT NULL,
Tipo_Camisa enum("Normal", "Camiseta", "Manga Larga") NOT NULL,
Talla_Camisa varchar(5) NOT NULL,
Num_Stock int NOT NULL,
Precio bigint NOT NULL
);

CREATE TABLE Compra(
Id_Compra int NOT NULL auto_increment PRIMARY KEY,
Id_Cliente int NOT NULL references Usuario(Id_Usuario),
Id_Camisa int NOT NULL references Camisa(Id_Camisa),
Metodo_Pago enum("Tarjeta", "Efectivo", "PSE") NOT NULL,
Fecha_Compra DATE NOT NULL
);

INSERT INTO Usuario (Nombre,Tipo_Usuario,Correo,Contrasenia,Num_Documento,Genero,Direccion,Telefono)
VALUES ("Miguel", "Administrador", "miguel@gmail.com", "123", "1014659833", "Masculino", "Calle 129", "3139823"),
("Sofia", "Proveedor", "sofi@gmail.com", "321", "1231233", "Femenino", "Calle 54", "213123"),
("Pepe", "Cliente", "pp123@gmail.com", "hola321", "3123121", "Masculino", "Calle 13", "5635344");

INSERT INTO Camisa (Marca_Camisa, Color_Camisa, Tipo_Camisa, Talla_Camisa, Num_Stock, Precio)
VALUES (?,?,?,?,?,?);

SELECT * FROM Usuario;
SELECT * FROM Camisa;
SELECT * FROM Compra;

SELECT Tipo_Usuario FROM Usuario WHERE Correo = "pp123@gmail.com" AND Contrasenia = "hola321";