
CREATE DATABASE proyecto_2


USE  proyecto_2


CREATE TABLE usuarios (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    correo_electronico VARCHAR(255) NOT NULL,
    contrasena VARCHAR(255) NOT NULL
);

CREATE TABLE categorias_ingresos (
    categoria_ingreso_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(255) NOT NULL
);


CREATE TABLE categorias_gastos (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(255) NOT NULL);
    
CREATE TABLE ingresos (
    ingreso_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    monto DECIMAL(10, 2) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    descripcion TEXT,
    categoria_ingreso_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (categoria_ingreso_id) REFERENCES categorias_ingresos(categoria_ingreso_id)
);


CREATE TABLE detalle_ingresos (
    detalle_ingreso_id INT AUTO_INCREMENT PRIMARY KEY,
    ingreso_id INT,
    metodo_pago VARCHAR(255),
    lugar_ingreso VARCHAR(255),
    FOREIGN KEY (ingreso_id) REFERENCES ingresos(ingreso_id)
);


CREATE TABLE gastos (
    gasto_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    monto DECIMAL(10, 2) NOT NULL,
    fecha_gasto DATE NOT NULL,
    descripcion TEXT,
    categoria_gasto_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (categoria_gasto_id) REFERENCES categorias_gastos(categoria_id)
);


CREATE TABLE detalle_gastos (
    detalle_gasto_id INT AUTO_INCREMENT PRIMARY KEY,
    gasto_id INT,
    metodo_pago VARCHAR(255),
    lugar_gasto VARCHAR(255),
    FOREIGN KEY (gasto_id) REFERENCES gastos(gasto_id)
);

