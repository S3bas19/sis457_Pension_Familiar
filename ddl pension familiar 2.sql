USE [LabPensionFamiliar]

CREATE TABLE Cliente(
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  nombre VARCHAR(30) NOT NULL,
  apellidoPaterno VARCHAR(20) NOT NULL,
  apellidoMaterno VARCHAR(20) NOT NULL DEFAULT SUSER_NAME(),
  observaciones VARCHAR(150) NOT NULL
)

CREATE TABLE Pensionado(
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  idCliente INT NOT NULL,
  fechaInicio DATE NOT NULL DEFAULT GETDATE(),
  fechaFin DATE NOT NULL,
  CONSTRAINT fk_Pensionado_Cliente FOREIGN KEY(idCliente) REFERENCES Cliente(id)
)

CREATE TABLE Factura(
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  idCliente INT NOT NULL,
  idCamarero INT NOT NULL,
  idMesa INT NOT NULL,
  fechaFactura DATE NOT NULL DEFAULT GETDATE(),
  CONSTRAINT fk_Factura_Cliente FOREIGN KEY(idCliente) REFERENCES Cliente(id),
  CONSTRAINT fk_Factura_Camarero FOREIGN KEY(idCamarero) REFERENCES Camarero(id),
  CONSTRAINT fk_Factura_Mesa FOREIGN KEY(idMesa) REFERENCES Mesa(id)
)

CREATE TABLE FacturaDetalle(
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  idFactura INT NOT NULL,
  idCocinero INT NOT NULL,
  idMenu INT NOT NULL,
  importe DECIMAL NOT NULL,
  CONSTRAINT fk_FacturaDetalle_Factura FOREIGN KEY(idFactura) REFERENCES Factura(id),
  CONSTRAINT fk_FacturaDetalle_Cocinero FOREIGN KEY(idCocinero) REFERENCES Cocinero(id),
  CONSTRAINT fk_FacturaDetalle_Menu FOREIGN KEY(idMenu) REFERENCES Menu(id)
)