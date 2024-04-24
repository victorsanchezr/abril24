create table zoo(
	nombre varchar(40),
	ciudad varchar(40),
	pais varchar(40),
	presupuesto money,
	tamanio int,
	id_zoo serial primary key
	
	
);

create table especieanimal(
	
	nombre_vulgar varchar(50),
	nombre_cientifico varchar(50),
	familia	 varchar(50),
	peligro_extincion boolean,
	tamanio int,
	id_especie serial primary key
	
	
	
);


create table animal(
	sexo varchar(50),
	id_especie int,
	animal_id serial primary key,
	id_zoo int,
	continente_org varchar(50),
	fecha_nac date,
	pais_org  varchar(50),
	foreign key (id_especie) references especieanimal(id_especie),
	foreign key (id_zoo) references zoo(id_zoo)
);


