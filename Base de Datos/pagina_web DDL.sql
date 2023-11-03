create database Pagina_web;
use pagina_web;

/*Creacion del login*/
create table usuario(
usuario_id int auto_increment primary key,
nombre varchar(50) not null,
apellido varchar(50) not null,
Correo varchar(70),
Cedula varchar(18) unique not null,
celular varchar(15),
clave varchar(50) not null,
fecha_nacimiento date not null); 

/*Creacion de las demas categorias*/
CREATE TABLE cuentas (
    cuenta_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    nombre_cuenta VARCHAR(25) NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE transacciones (
    transaccion_id INT AUTO_INCREMENT PRIMARY KEY,
    cuenta_id INT,
    tipo_transaccion ENUM('Ingreso', 'Gasto', 'Transferencia') NOT NULL,
    descripcion TEXT,
    monto DECIMAL(10, 2) NOT NULL,
    fecha_transaccion DATE NOT NULL,
    FOREIGN KEY (cuenta_id) REFERENCES cuentas(cuenta_id)
);

CREATE TABLE detalles_gastos (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL
);

CREATE TABLE detalles_transacciones (
    detalle_id INT AUTO_INCREMENT PRIMARY KEY,
    transaccion_id INT,
    metodo_pago VARCHAR(50),
    lugar_compra VARCHAR(50),
    FOREIGN KEY (transaccion_id) REFERENCES transacciones(transaccion_id)
);

CREATE TABLE ingresos (
    ingreso_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    Valor DECIMAL(10, 2) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    descripcion TEXT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE categorias_ingresos (
    categoria_ingreso_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL
);

ALTER TABLE ingresos
ADD FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id);

ALTER TABLE ingresos
ADD categoria_ingreso_id INT,
ADD FOREIGN KEY (categoria_ingreso_id) REFERENCES categorias_ingresos(categoria_ingreso_id);
