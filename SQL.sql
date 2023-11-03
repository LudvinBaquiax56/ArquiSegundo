drop database gasolinera;
create database gasolinera;
use gasolinera;

CREATE TABLE tipo_gasolinas(
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(50) NULL DEFAULT NULL,
    costo decimal default null,
    created_at date NOT NULL,
	updated_at date  NULL
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE tanque_gasolinas(
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_tipo_gasolinas int,
  	capacidad double default null,
    nivel_actual double default null,
    FOREIGN KEY (id_tipo_gasolinas) REFERENCES tipo_gasolinas(id),
    created_at date NOT NULL,
	updated_at date  NULL
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE clientes(
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	nombres varchar(50) default null,
	apellidos varchar(50) default null,
	cui varchar(50) default null,
    puntos double default null,
    created_at date NOT NULL,
	updated_at date  NULL
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE registro_tanques(
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_tipo_gasolinas int,
    FOREIGN KEY (id_tipo_gasolinas) REFERENCES tipo_gasolinas(id),
    id_cliente int default null,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    created_at date NOT NULL,
	updated_at date  NULL
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE empleados(
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	nombres varchar(50) default null,
	apellidos varchar(50) default null,
	cui varchar(50) default null,
    created_at date NOT NULL,
	updated_at date  NULL
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE tipo_pagos(
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	tipo varchar(50) default null,
    created_at date NOT NULL,
	updated_at date  NULL
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE ventas(
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_tanque_gasolinas int default null,
    FOREIGN KEY (id_tanque_gasolinas) REFERENCES tanque_gasolinas(id),
	id_tipo_pago int default null,
    FOREIGN KEY (id_tipo_pago) REFERENCES tipo_pagos(id),
	id_cliente int default null,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
	id_empleado int default null,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id),
    cantidad double default null ,
    total double default null,
    created_at date NOT NULL,
	updated_at date  NULL
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;