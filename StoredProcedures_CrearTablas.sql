create database pia_netflix
use pia_netflix

TipoGenero-----------------------------------
delimiter $
CREATE PROCEDURE ct_tipogenero ()
BEGIN
create table TipoGenero
(
ID_Genero int,
Nombre varchar(150),
Primary key (ID_Genero)
);
   end
$

Membresia-------------------------------------{
delimiter $
CREATE PROCEDURE ct_membresia ()
BEGIN
create table Membresia
(
ID_Membresia int,
Nombre varchar(150),
Tarifa int,
Descripcion varchar(100),
Primary key (ID_Membresia)
)
;
   end
$

Productora----------------------------------------------
delimiter $
CREATE PROCEDURE ct_productora ()
BEGIN
create table Productora
(
ID_Productora int,
NombreProductora varchar(150),
Primary key (ID_Productora)
)
;
   end
$

Actor-------------------------------------
delimiter $
CREATE PROCEDURE ct_actor ()
BEGIN
create table Actor
(
ID_Actor int,
NombreActor varchar(150),
FechaNacimiento date,
LugarNacimiento varchar(100),
Primary key (ID_Actor)
)
;
   end
$
Pelicula---------------------------------------
delimiter $
CREATE PROCEDURE ct_pelicula ()
BEGIN
create table Pelicula
(
ID_Pelicula int,
ID_Genero int,
NombrePelicula varchar(150),
Fecha date,
Duracion time,
ID_Productora int,
Primary key (ID_Pelicula),
Foreign key (ID_Productora) references Productora (ID_Productora),
foreign key (ID_Genero) references TipoGenero(ID_Genero)
)
;
   end
$
{
ActorPelicula-------------------------------------
delimiter $
CREATE PROCEDURE ct_actorpelicula ()
BEGIN
create table ActorPelicula
(
ID_ActorPelicula int,
ID_Pelicula int,
ID_Actor int,
primary key (ID_ActorPelicula),
foreign key (ID_Pelicula) references Pelicula(ID_Pelicula),
foreign key (ID_Actor) references Actor(ID_Actor)
)
;
end   
$

Cliente-----------------------------------------------------
delimiter $
create procedure ct_cliente ()
begin
create table Cliente
(
ID_Cliente int,
Nombre varchar(150),
Correo varchar(150),
Telefono varchar(10),
Direccion varchar(150),
FechaNacimiento date,
NumeroTarjeta varchar(50),
ID_Membresia int,
primary key (ID_Cliente),
foreign key (ID_Membresia) references Membresia(ID_Membresia)
)
;
end
$

Visualizacion-----------------------------------------------------
delimiter $
create procedure ct_visualizacion ()
begin
create table Visualizacion
(
ID_Visualizacion int,
ID_Cliente int,
ID_Pelicula int,
Fecha date,
primary key (ID_Visualizacion),
foreign key (ID_Cliente) references Cliente(ID_Cliente),
foreign key (ID_Pelicula) references Pelicula(ID_Pelicula)
)
;
end
$
call pia_netflix.ct_tipogenero();
call pia_netflix.ct_membresia();
call pia_netflix.ct_productora();
call pia_netflix.ct_actor();
call pia_netflix.ct_pelicula();
call pia_netflix.ct_actorpelicula();
call pia_netflix.ct_cliente();
call pia_netflix.ct_visualizacion();
