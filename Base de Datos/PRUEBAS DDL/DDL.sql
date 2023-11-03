create database proyecto
USE proyecto



CREATE TABLE usuarios (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    correo_electronico VARCHAR(255) NOT NULL,
    contrasena VARCHAR(255) NOT NULL
);


CREATE TABLE cuentas (
    cuenta_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    nombre_cuenta VARCHAR(255) NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
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


CREATE TABLE categorias_gastos (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(255) NOT NULL
);


CREATE TABLE detalle_gastos (
    detalle_id INT AUTO_INCREMENT PRIMARY KEY,
    transaccion_id INT,
    metodo_pago VARCHAR(255),
    lugar_compra VARCHAR(255),
    FOREIGN KEY (transaccion_id) REFERENCES transacciones(transaccion_id)
);


CREATE TABLE ingresos (
    ingreso_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    monto DECIMAL(10, 2) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    descripcion TEXT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);

CREATE TABLE categorias_ingresos (
    categoria_ingreso_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(255) NOT NULL
);


ALTER TABLE transacciones
ADD categoria_gasto_id INT,
ADD categoria_ingreso_id INT,
ADD FOREIGN KEY (categoria_gasto_id) REFERENCES categorias_gastos(categoria_id),
ADD FOREIGN KEY (categoria_ingreso_id) REFERENCES categorias_ingresos(categoria_ingreso_id);
    
    