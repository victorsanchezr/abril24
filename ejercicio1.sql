drop table if exists asunto_procurador;
drop table if exists asunto;
drop table if exists cliente;
drop table if exists procurador;



create table cliente(

dni varchar(9) primary key,
nombre varchar(40),
apellido varchar(40)
);


create table procurador(

dni varchar(9) primary key,
nombre varchar(40),
apellido varchar(40)
);

create table asunto(

id_exp serial primary key,
fech_inicio date,
fech_fin date,
estado varchar(40),
dni_cliente varchar(9),
foreign key (dni_cliente) references cliente(dni)
	
	
);


create table asunto_procurador(
id_exp_asunt int,
dni_proc varchar(9),
primary key(id_exp_asunt,dni_proc),
foreign key (id_exp_asunt) references asunto(id_exp),
foreign key (dni_proc) references procurador(dni)
	
);





