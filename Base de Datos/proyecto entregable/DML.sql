
INSERT INTO usuarios (nombre, correo_electronico, contrasena)
VALUES
    ('johan', 'johan@hotmail.com', 'Jer123'),
    ('Mauricio', 'mao@gmail.com', '242526'),
    ('anderson', 'andersan@hotmail.com', '1001297812'),
    ('Diego', 'diego@gmail.com', '12526'),
    ('Cristian', 'cris@gmail.com', 'contra5');


INSERT INTO categorias_ingresos (nombre_categoria)
VALUES
    ('Salario'),
    ('Ventas'),
    ('Inversiones'),
    ('transporte'),
    ('Otros Ingresos');


INSERT INTO categorias_gastos (nombre_categoria)
VALUES
    ('Comida'),
    ('Transporte'),
    ('Entretenimiento'),
    ('Salud'),
    ('Educación');


INSERT INTO ingresos (usuario_id, monto, fecha_ingreso, descripcion, categoria_ingreso_id)
VALUES
    (1, 100.000, '2023-09-01', 'Ingreso mensual', 1),
    (1, 50.000, '2023-09-05', 'Venta de artículos', 2),
    (2, 75.000, '2023-09-10', 'Ingreso de alquiler', 1),
    (3, 120.000, '2023-09-02', 'Ingreso adicional', 3),
    (3, 300.000, '2023-09-06', 'creacion web de finanzas ', 1);


INSERT INTO detalle_ingresos (ingreso_id, metodo_pago, lugar_ingreso)
VALUES
    (1, 'Transferencia bancaria', 'Banco '),
    (2, 'Efectivo', 'Tienda '),
    (3, 'PayPal', 'Propiedad '),
    (4, 'Cheque', 'Cliente '),
    (5, 'Transferencia bancaria', 'Banco ');


INSERT INTO gastos (usuario_id, monto, fecha_gasto, descripcion, categoria_gasto_id)
VALUES
    (1, 250.000, '2023-09-03', 'Compras de alimentos', 1),
    (1, 50.000, '2023-09-07', 'Gasolina', 2),
    (2, 100.000, '2023-09-12', 'Comida rápida', 3),
    (3, 80.000, '2023-09-04', 'Transporte público', 1),
    (3, 40.000, '2023-09-08', 'Entretenimiento', 2);


INSERT INTO detalle_gastos (gasto_id, metodo_pago, lugar_gasto)
VALUES
    (1, 'Tarjeta de crédito', 'Supermercado '),
    (2, 'Efectivo', 'Estación de servicio '),
    (3, 'Tarjeta de débito', 'Restaurante '),
    (4, 'Efectivo', 'Estación de autobuses '),
    (5, 'Tarjeta de crédito', 'Cine ');
