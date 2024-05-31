CREATE DATABASE LabPensionFamiliar;

USE [master]
GO
CREATE LOGIN [usrpensionfamiliar] WITH PASSWORD='123456',
  DEFAULT_DATABASE = [LabPensionFamiliar],
  CHECK_EXPIRATION = OFF,
  CHECK_POLICY = ON
GO
USE [LabPensionFamiliar]
GO
CREATE USER [usrpensionfamiliar] FOR LOGIN [usrpensionfamiliar]
GO
ALTER ROLE [db_owner] ADD MEMBER [usrpensionfamiliar]
GO

CREATE TABLE Anfitrion (
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  nombre VARCHAR(30) NOT NULL,
  apellidoPaterno VARCHAR(20) NULL,
  apellidoMaterno VARCHAR(20) NULL,
  ususario VARCHAR(15) NOT NULL,
  clave VARCHAR(100) NOT NULL
);
CREATE TABLE Cocinero (
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  nombre VARCHAR(30) NOT NULL,
  apellidoPaterno VARCHAR(20) NULL,
  apellidoMaterno VARCHAR(20) NULL
);
CREATE TABLE Camarero (
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  nombre VARCHAR(30) NOT NULL,
  apellidoPaterno VARCHAR(20) NULL,
  apellidoMaterno VARCHAR(20) NULL
);
CREATE TABLE Mesa (
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  capacidad INT NOT NULL,
  ubicacion VARCHAR(20) NULL
);
CREATE TABLE Menu (
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  cantidad INT NOT NULL,
  entrada VARCHAR(15) NOT NULL,
  sopa VARCHAR(15) NOT NULL,
  segundo VARCHAR(15) NOT NULL,
  refreso VARCHAR(15) NOT NULL,
  costo INT NOT NULL
);
DROP TABLE USUARIO;
