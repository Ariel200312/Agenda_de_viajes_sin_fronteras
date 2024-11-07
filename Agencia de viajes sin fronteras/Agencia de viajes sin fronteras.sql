DROP TABLE clientes;
CREATE TABLE clientes (
id_cliente INT (10) NOT NULL,
nombre VARCHAR (50) NOT NULL,
apellido VARCHAR (50) NOT NULL,
telefono VARCHAR (15) NOT NULL,
email VARCHAR (60) NOT NULL,
direccion VARCHAR (60) NOT NULL, 
ciudad VARCHAR (50) NOT NULL, 
pais VARCHAR (50) NOT NULL,
PRIMARY KEY (id_cliente)
)
ENGINE = InnoDB; ;

DROP TABLE viaje;
CREATE TABLE viaje (
id_viaje INT NOT NULL,
id_destino INT NOT NULL,
fecha_salida DATE NOT NULL,
fecha_regreso DATE NOT NULL,
precio DECIMAL (10,2) NOT NULL,
descripcion TEXT (100) NOT NULL,
PRIMARY KEY (id_viaje)
)
ENGINE = InnoDB; ;

DROP TABLE reserva;
CREATE TABLE reserva (
id_reserva INT PRIMARY KEY,
id_cliente INT NOT NULL,
id_viaje INT NOT NULL,
fecha_reserva DATE NOT NULL,
estado VARCHAR (50) NOT NULL,
total VARCHAR (45) NOT NULL,
PRIMARY KEY (id_reserva)
)
ENGINE = InnoDB; 

DROP TABLE viaje;
CREATE TABLE viaje (
id_viaje INT NOT NULL,
id_destino INT NOT NULL,
fecha_salida DATE NOT NULL,
fecha_regreso DATE NOT NULL,
precio DECIMAL (10,2) NOT NULL,
descripcion TEXT (100) NOT NULL,
PRIMARY KEY (viaje)
)
ENGINE = InnoDB; 

DROP TABLE detalle_reserva;
CREATE TABLE detalle_reserva (
id_detalle_reserva INT NOT NULL,
id_reserva INT NOT NULL,
id_habitacion INT NOT NULL,
cantidad INT NOT NULL,
precio_venta DECIMAL (10,2) NOT NULL,
PRIMARY KEY (id_detalle_reserva)
)
ENGINE = InnoDB; 

DROP TABLE habitacion;
CREATE TABLE habitacion (
id_habitacion INT NOT NULL PRIMARY KEY,
id_hotel INT NOT NULL,
tipo_habitacion VARCHAR (50) NOT NULL,
capacidad INT NOT NULL,
precio DECIMAL (10,2) NOT NULL,
descripcion TEXT (100) NOT NULL,
PRIMARY KEY (id_habitacion)
)
ENGINE = InnoDB; 

DROP TABLE hotel;
CREATE TABLE hotel (
id_hotel INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
estrellas INT NOT NULL,
direccion VARCHAR (60) NOT NULL,
ciudad VARCHAR (50) NOT NULL,
pais VARCHAR (50) NOT NULL, 
descripcion TEXT (100) NOT NULL,
PRIMARY KEY (id_hotel)
)
ENGINE = InnoDB; 

DROP TABLE pago;
CREATE TABLE pago (
id_pago INT NOT NULL PRIMARY KEY,
id_reserva INT NOT NULL,
fecha_pago DATE NOT NULL,
metodo_pago VARCHAR (50) NOT NULL,
monto DECIMAL (10,2) NOT NULL,
PRIMARY KEY (id_pago)
)
ENGINE = InnoDB;

DROP TABLE reserva_servicio;
CREATE TABLE reserva_servicio (
id_reserva_servicio INT NOT NULL,
id_reserva INT NOT NULL,
id_servicio INT NOT NULL,
cantidad INT NOT NULL,
precio_venta INT NOT NULL,
PRIMARY KEY (id_reserva_servicio)
)
ENGINE = InnoDB; 

DROP TABLE servicio;
CREATE TABLE servicio (
id_servicio INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
descripcion TEXT (100) NOT NULL,
PRIMARY KEY (id_servicio)
)
ENGINE = InnoDB;