create table socio(
    dni serial primary key,
	nombre varchar(40),
	apellidos varchar(50)
	
	
	
);


create table patron(
	dni_patron serial primary key,
	nombre varchar(40),
	apellidos varchar(40)
	
	
);

create table barco(
	dni_propietario int,
	numero_amarre int,
	nombre varchar(50),
	num_matricula serial primary key,
	cuota_pago float,
	foreign key (dni_propietario) references socio(dni)
	
	
);

create table salida(
	num_matricula int,
	fecha_salida date,
	dni_patron int,
	destino varchar(40),
	id_salida serial primary key,
	foreign key (num_matricula) references barco(num_matricula),
	
	foreign key (dni_patron) references patron(dni_patron)
	
	
);


