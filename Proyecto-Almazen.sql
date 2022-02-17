create table Clientes(
    cif varchar (15) CONSTRAINT clientes_pk PRIMARY KEY,
    nombre varchar(10) CONSTRAINT clientes_nombre_propio NOT NULL UNIQUE 
);

create table Servicio(
    tipo varchar(10) CONSTRAINT servicio_pk PRIMARY KEY,
    precio numeric(9,2) CONSTRAINT servicio_precio_estandar DEFAULT (1000,00),
    duracion varchar(20) CONSTRAINT servicio_tiempo NOT NULL
    id_departamento FK
);

create table Vehiculo(
    matricula varchar(10) CONSTRAINT vehiculo_pk PRIMARY KEY,
    tipo varchar(10) CONSTRAINT vehiculo_tp NOT NULL,
    capacidad numeric (5,2) CONSTRAINT vehiculo_peso NOT NULL,
);

create table Transportista(
    nombre varchar(10) CONSTRAINT transportista_nombre NOT NULL,
    apellido1 varchar(10) CONSTRAINT transportista_apellido1 NOT NULL,
    apellido2 varchar(10) CONSTRAINT transportista_apellido2 NOT NULL,
    dni varchar(15) CONSTRAINT  transportista_pk PRIMARY KEY 
);

create table Trayectos(
    num_trayecto SERIAL numeric (9) CONSTRAINT trayectos_pk PRIMARY KEY,
    km numeric(9,2) CONSTRAINT trayecto_distancia NOT NULL,
    destino varchar(15),
    origen varchar(15),
    tipo varchar(15) CONSTRAINT trayectos_tp NOT NULL
);

create table Departamento(
    id varchar(15) SERIAL CONSTRAINT departamento_pk PRIMARY KEY,
    direccion_fk_plataforma 
);

create table Plataforma(
    id varchar(15) SERIAL CONSTRAINT plataforma_pk PRIMARY KEY,
    direccion varchar (25) CONSTRAINT plataforma_direc NOT NULL
);

create table Director(
    nombre varchar(15) CONSTRAINT director_pk PRIMARY KEY,
    
);