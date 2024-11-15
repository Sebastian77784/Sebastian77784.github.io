
--Sergio Sebastian Flores Ramirez 22cg0162 5A --
create database Restaurante
USE RESTARUANTE

create table Usuarios(usuario_id varchar(10) primary key , nombre char (15), email varchar(30), telefono varchar (10), direccion varchar (25),tipo_usuario char(15), contraseña varchar(8), fecha_registro date)
create table Menu(plato_id varchar(10)primary key, nombre_plato char (25), descripcion char(50), precio money, categoria char (15), disponible char(15))
create table Pedidos (pedido_id varchar(10) primary key, usuario_id varchar(10), fecha_pedido date, estado char(15), total char(15))
create table Detalles_Pedido (detalle_id varchar(10) primary key,pedido_id varchar(10),plato_id varchar(10),cantidad varchar(15), precio money)
create table Reservaciones(reservas_id varchar(10) primary key, usuario_id varchar(10), fecha_reserv date, numero_personas varchar(15), estado char(15))
create table Reseñas(reseñas_id varchar(10) primary key, usuarios_id varchar(10), plato_id varchar(10), calificacion char(7), comentario char(50))
create table Ingredientes_Preparacion(ingrediente_id varchar(10) primary key, plato_id varchar(10), cantidad numeric (3), unidad_medida char(5),ingrediente char(15))
create table Proveedores(proveedor_id varchar(10) primary key, id_existencias varchar(10), precio_unitario numeric,fecha_suministro date, cantidad numeric (3))
create table Ingredientes_Stock(id_existencias varchar(10)primary key, nombre char(15), stock numeric, descripcion char(25), ingrediente_id varchar(10))

ALTER TABLE Ingredientes_Preparacion alter COLUMN unidad_medida CHAR(6);


insert into Usuarios(usuario_id, nombre, email, telefono, direccion,tipo_usuario, contraseña, fecha_registro) VALUES('2','Juan Perez','sjahdk@itsncg.edu.mx','6361234568','5 de mayo','cliente','J1U2A3N4','1/13/2024')
insert into Usuarios(usuario_id, nombre, email, telefono, direccion,tipo_usuario, contraseña, fecha_registro) VALUES('3','Pedro Rodriguez','dsjfjh@gmail.com','6361258944','25 de marzo','cliente','H1O2L3A4','07/05/2024')
insert into Usuarios(usuario_id, nombre, email, telefono, direccion,tipo_usuario, contraseña, fecha_registro) VALUES('1','Sergio Flores','sebas112@itsncg.edu.mx','6361034074','21 de marzo','Administrador','S1E2B3A4','01/01/2024')
insert into Usuarios(usuario_id, nombre, email, telefono, direccion,tipo_usuario, contraseña, fecha_registro) VALUES('4','Raul Madrid','Raul333k@hotmail.com','6365487698','Francisco i Madero','cliente','1234567a','11/14/2024')
insert into Usuarios(usuario_id, nombre, email, telefono, direccion,tipo_usuario, contraseña, fecha_registro) VALUES('5','Juan Jose','jose1122@gmail.com','6361548733','Miguel Hidalgo','cliente','12hg234','09/05/2024')

INSERT INTO Menu (plato_id, nombre_plato, descripcion, precio, categoria, disponible) VALUES (1, 'Ensalada César', 'Ensalada fresca con pollo, lechuga y crutones.', 8.50, 'Entrante', 'disponible');
INSERT INTO Menu (plato_id, nombre_plato, descripcion, precio, categoria, disponible) VALUES (2, 'Spaghetti Carbonara', 'Pasta con salsa cremosa, panceta y parmesano.', 12.00, 'Plato principal', 'disponible');
INSERT INTO Menu (plato_id, nombre_plato, descripcion, precio, categoria, disponible) VALUES (3, 'Salmón a la parrilla', 'Salmón a la parrilla con limón y hierbas.', 15.00, 'Plato principal', 'agotado');
INSERT INTO Menu (plato_id, nombre_plato, descripcion, precio, categoria, disponible) VALUES (4, 'Tarta de queso', 'Tarta de queso con base de galleta y mermelada.', 6.50, 'Postre', 'disponible');
INSERT INTO Menu (plato_id, nombre_plato, descripcion, precio, categoria, disponible) VALUES (9, 'Hamburguesa Clásica', 'Hamburguesa con carne, queso, lechuga y tomate.', 11.00, 'Plato principal', 'agotado');

INSERT INTO Pedidos (pedido_id, usuario_id, fecha_pedido, estado, total) VALUES ('P001', '2', '2024-11-13', 'Enviado', '25.00')
INSERT INTO Pedidos (pedido_id, usuario_id, fecha_pedido, estado, total) VALUES ('P002', '3', '2024-11-13', 'Pendiente', '30.50')
INSERT INTO Pedidos (pedido_id, usuario_id, fecha_pedido, estado, total) VALUES ('P003', '4', '2024-11-14', 'Cancelado', '0.00')
INSERT INTO Pedidos (pedido_id, usuario_id, fecha_pedido, estado, total) VALUES ('P004', '5', '2024-11-14', 'Enviado', '45.75')
INSERT INTO Pedidos (pedido_id, usuario_id, fecha_pedido, estado, total) VALUES ('P005', '2', '2024-11-15', 'Pendiente', '17.25')

INSERT INTO Detalles_Pedido (detalle_id, pedido_id, plato_id, cantidad, precio) VALUES ('D001', 'P001', '1', '2', 8.50)
INSERT INTO Detalles_Pedido (detalle_id, pedido_id, plato_id, cantidad, precio) VALUES('D002', 'P001', '2', '1', 12.00)
INSERT INTO Detalles_Pedido (detalle_id, pedido_id, plato_id, cantidad, precio) VALUES('D003', 'P002', '4', '3', 6.50)
INSERT INTO Detalles_Pedido (detalle_id, pedido_id, plato_id, cantidad, precio) VALUES('D004', 'P004', '3', '1', 15.00)
INSERT INTO Detalles_Pedido (detalle_id, pedido_id, plato_id, cantidad, precio) VALUES('D005', 'P005', '9', '1', 11.00)

INSERT INTO Reservaciones (reservas_id, usuario_id, fecha_reserv, numero_personas, estado) VALUES ('R001', '2', '2024-11-15', '4', 'Confirmada')
INSERT INTO Reservaciones (reservas_id, usuario_id, fecha_reserv, numero_personas, estado) VALUES('R002', '3', '2024-11-15', '2', 'Pendiente')
INSERT INTO Reservaciones (reservas_id, usuario_id, fecha_reserv, numero_personas, estado) VALUES('R003', '4', '2024-11-16', '5', 'Cancelada')
INSERT INTO Reservaciones (reservas_id, usuario_id, fecha_reserv, numero_personas, estado) VALUES('R004', '5', '2024-11-16', '6', 'Confirmada')
INSERT INTO Reservaciones (reservas_id, usuario_id, fecha_reserv, numero_personas, estado) VALUES('R005', '2', '2024-11-17', '3', 'Pendiente')

INSERT INTO Reseñas (reseñas_id, usuarios_id, plato_id, calificacion, comentario) VALUES ('RE001', '2', '1', '5', 'Excelente plato, muy sabroso.')
INSERT INTO Reseñas (reseñas_id, usuarios_id, plato_id, calificacion, comentario) VALUES ('RE002', '3', '2', '4', 'Muy bueno, aunque podría mejorar la presentación.')
INSERT INTO Reseñas (reseñas_id, usuarios_id, plato_id, calificacion, comentario) VALUES ('RE003', '4', '3', '3', 'Buen sabor, pero estaba un poco frío.')
INSERT INTO Reseñas (reseñas_id, usuarios_id, plato_id, calificacion, comentario) VALUES ('RE004', '5', '4', '5', 'El mejor plato que he probado definitivamente')
INSERT INTO Reseñas (reseñas_id, usuarios_id, plato_id, calificacion, comentario) VALUES ('RE005', '2', '9', '2', 'No cumplió mis expectativas, estaba muy salado.')

INSERT INTO Ingredientes_Preparacion (ingrediente_id, plato_id, cantidad, unidad_medida, ingrediente) VALUES ('I001', '1', 100, 'g', 'Lechuga')
INSERT INTO Ingredientes_Preparacion (ingrediente_id, plato_id, cantidad, unidad_medida, ingrediente) VALUES ('I002', '2', 200, 'g', 'Tomate')
INSERT INTO Ingredientes_Preparacion (ingrediente_id, plato_id, cantidad, unidad_medida, ingrediente) VALUES ('I003', '3', 50, 'ml', 'Aceite de oliva')
INSERT INTO Ingredientes_Preparacion (ingrediente_id, plato_id, cantidad, unidad_medida, ingrediente) VALUES ('I004', '4', 150, 'g', 'Queso')
INSERT INTO Ingredientes_Preparacion (ingrediente_id, plato_id, cantidad, unidad_medida, ingrediente) VALUES ('I005', '9', 4, 'unidad', 'Huevo')

INSERT INTO Proveedores (proveedor_id, id_existencias, precio_unitario, fecha_suministro, cantidad) VALUES ('P001', 'EX001', 2.50, '2024-11-10', 100)
INSERT INTO Proveedores (proveedor_id, id_existencias, precio_unitario, fecha_suministro, cantidad) VALUES ('P002', 'EX002', 3.00, '2024-11-11', 150)
INSERT INTO Proveedores (proveedor_id, id_existencias, precio_unitario, fecha_suministro, cantidad) VALUES ('P003', 'EX003', 1.80, '2024-11-12', 200)
INSERT INTO Proveedores (proveedor_id, id_existencias, precio_unitario, fecha_suministro, cantidad) VALUES ('P004', 'EX004', 5.00, '2024-11-13', 50)
INSERT INTO Proveedores (proveedor_id, id_existencias, precio_unitario, fecha_suministro, cantidad) VALUES ('P005', 'EX005', 4.00, '2024-11-14', 120)

INSERT INTO Ingredientes_Stock (id_existencias, nombre, stock, descripcion, ingrediente_id) VALUES ('EX001', 'Lechuga', 100, 'Lechuga fresca y limpia', 'I001')
INSERT INTO Ingredientes_Stock (id_existencias, nombre, stock, descripcion, ingrediente_id) VALUES ('EX002', 'Tomate', 80, 'Tomates rojos frescos', 'I002')
INSERT INTO Ingredientes_Stock (id_existencias, nombre, stock, descripcion, ingrediente_id) VALUES ('EX003', 'Aceite de oliva', 50, 'Aceite extra virgen', 'I003')
INSERT INTO Ingredientes_Stock (id_existencias, nombre, stock, descripcion, ingrediente_id) VALUES ('EX004', 'Queso', 60, 'Queso rallado', 'I004')
INSERT INTO Ingredientes_Stock (id_existencias, nombre, stock, descripcion, ingrediente_id) VALUES ('EX005', 'Huevo', 200, 'Huevos frescos de gallina', 'I005')


--Inner join--
SELECT Pedidos.pedido_id, Usuarios.nombre, Usuarios.email, Pedidos.fecha_pedido, Pedidos.estado, Pedidos.total
FROM Pedidos INNER JOIN Usuarios ON Pedidos.usuario_id = Usuarios.usuario_id
WHERE Pedidos.estado = 'Enviado';

SELECT Reservaciones.reservas_id, Usuarios.nombre, Usuarios.telefono, Reservaciones.fecha_reserv, Reservaciones.numero_personas, Reservaciones.estado
FROM Reservaciones INNER JOIN Usuarios ON Reservaciones.usuario_id = Usuarios.usuario_id
WHERE Reservaciones.estado = 'Confirmada';

SELECT Detalles_Pedido.detalle_id, Pedidos.pedido_id, Usuarios.nombre AS nombre_usuario, Menu.nombre_plato, Detalles_Pedido.cantidad, Detalles_Pedido.precio AS precio_detalle, Pedidos.fecha_pedido
FROM Detalles_Pedido INNER JOIN Pedidos ON Detalles_Pedido.pedido_id = Pedidos.pedido_id INNER JOIN Usuarios ON Pedidos.usuario_id = Usuarios.usuario_id INNER JOIN Menu ON Detalles_Pedido.plato_id = Menu.plato_id
WHERE Usuarios.nombre = 'Juan Perez';


--producto cartesiano--
SELECT Pedidos.pedido_id, Pedidos.usuario_id, Usuarios.nombre, Pedidos.fecha_pedido
FROM Pedidos, Usuarios
WHERE Pedidos.usuario_id = Usuarios.usuario_id;

SELECT Pedidos.pedido_id, Usuarios.nombre, Menu.nombre_plato, Detalles_Pedido.cantidad
FROM Pedidos, Usuarios, Menu, Detalles_Pedido
WHERE Pedidos.usuario_id = Usuarios.usuario_id AND Pedidos.pedido_id = Detalles_Pedido.pedido_id AND Detalles_Pedido.plato_id = Menu.plato_id;

SELECT Reservaciones.reservas_id, Reservaciones.fecha_reserv, Reservaciones.numero_personas, Usuarios.nombre
FROM Reservaciones, Usuarios
WHERE Reservaciones.usuario_id = Usuarios.usuario_id;

--FUNCIONES DE CONSULTAS Y CONSULTAS DE RESUMEN--

SELECT Usuarios.nombre,COUNT(Pedidos.pedido_id) AS total_pedidos
FROM Pedidos INNER JOIN Usuarios ON Pedidos.usuario_id = Usuarios.usuario_id
GROUP BY Usuarios.nombre;

SELECT Menu.nombre_plato, SUM(Detalles_Pedido.cantidad * Detalles_Pedido.precio) AS total_ventas
FROM Detalles_Pedido INNER JOIN Menu ON Detalles_Pedido.plato_id = Menu.plato_id
GROUP BY Menu.nombre_plato;

SELECT Menu.nombre_plato, AVG(CAST(Reseñas.calificacion AS INT)) AS promedio_calificacion
FROM Reseñas INNER JOIN Menu ON Reseñas.plato_id = Menu.plato_id
GROUP BY Menu.nombre_plato;
