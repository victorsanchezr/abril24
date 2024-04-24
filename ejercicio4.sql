drop table if exists stock;
drop table if exists libros;
drop table if exists provincia;
drop table if exists detalle_pedidos;
drop table if exists pedidos;
drop table if exists socios;
drop table if exists almacenes;
drop table if exists colecciones;
drop table if exists poblaciones;

create table colecciones(
	id_coleccion serial primary key,
	volumen int
);



create table almacenes(
	fecha_apertura date,
	id_almacen serial primary key,
	id_provincia int unique,
	direccion varchar(40)
	
);










create table provincia(
	id_provincia serial primary key,
	nombre varchar(40),
	id_almacen int,
	extensions varchar(40),
	foreign key (id_almacen) references almacenes(id_almacen)
	
	
);

create table poblaciones(
	habitantes varchar(50),
	id_poblacion serial primary key,
	id_provincia int,
	nombre varchar(40),
	foreign key (id_provincia) references provincia(id_provincia)
	
);
create table socios(
	id_socio serial primary key,
	telefono varchar(20),
	nombre varchar(20),
	apellidos varchar(100),
	id_poblacion int,
	id_socio_aviador int,
	foreign key (id_poblacion) references poblaciones(id_poblacion)
	
);

create table pedidos(
	id_socio int,
	id_pedido serial primary key,
	forma_de_envio varchar(20),
	forma_de_pago varchar(20),
	foreign key (id_socio) references socios(id_socio)
	
);


create table detalle_pedidos(
	id_pedido serial,
	consecutivo serial primary key,
	ISBN varchar(30),
	cantidad int,
	foreign key (id_pedido) references pedidos(id_pedido)
	
);


create table libros(
	editorial varchar(30),
	id_coleccion int,
	autor varchar(30),
	titulo varchar(30),
	ISBN varchar(30) primary key,
	foreign key (id_coleccion) references colecciones(id_coleccion)
	
	
);


create table stock(
	id_almacen int,
	cantidad int,
	ISBN varchar(30),
	foreign key (ISBN) references libros(ISBN),
	foreign key (id_almacen) references almacenes(id_almacen)
	

	
	
);




