Actor-----------------------
delimiter $
create procedure Insertar_Actor (in id_act varchar (15), in nom_act varchar(150), in fn_act date, in ln_act varchar(150))
begin
insert into actor (Id_Actor,NombreActor, FechaNacimiento,LugarNacimiento) values (id_act,nom_act,fn_act,ln_act);
end
$

TipoGenero---------------
delimiter $
create procedure Insertar_TipoGenero (in id_tg int, nombre_tg Varchar(150))
begin
insert into tipogenero (ID_Genero,Nombre) values (id_tg, nombre_tg);
end
$

Membresia----------------------
delimiter $
create procedure Insertar_Membresia (in id_m int, in nombre_m varchar(150), in tarifa_m int, in descripcion_m varchar(100))
begin
insert into Membresia (ID_Membresia,Nombre,Tarifa,Descripcion) values (id_m,nombre_m,tarifa_m,descripcion_m);
end
$

Productora---------------------------------------

delimiter $
create procedure Insertar_Productora (in id_prod int, in nombre_prod varchar(150))
begin
insert into Productora (ID_Productora, NombreProductora) values (id_prod,nombre_prod);
end
$

Pelicula-----------------------------------------
delimiter $
create procedure Insertar_Pelicula (in id_peli int, in id_gen int, in nombre_peli varchar(150), in fecha_peli date, in dur_peli time, in id_prod int)
begin
insert into Pelicula (ID_Pelicula, ID_Genero, NombrePelicula, Fecha, Duracion, ID_Productora) values (id_peli, id_gen, nombre_peli, fecha_peli, dur_peli, id_prod);
end
$

ActorPelicula--------------------------------
delimiter $
create procedure Insertar_ActorPelicula (in id_ap int, in id_pelicu int, in id_acto int)
begin
insert into ActorPelicula (ID_ActorPelicula,ID_Pelicula,ID_Actor) values (id_ap, id_pelicu, id_acto);
end
$

Cliente-----------------------------------
delimiter $
create procedure Insertar_Cliente (in id_clt int, in nombre_cliente varchar(150), in correo_cliente varchar(150), in telefono_cliente varchar(150), in direccion_cliente varchar(150), in cliente_fn date, in cliente_nt varchar(150), in id_memb int)
begin
insert into cliente values (id_clt,nombre_cliente,correo_cliente,telefono_cliente,direccion_cliente,cliente_fn,cliente_nt,id_memb);
end
$

Visualizacion------------------------------
delimiter $
create procedure Insertar_Visualizacion (in id_vis int, in id_cli int, in id_pe int, in fecha_vis date)
begin
insert into visualizacion values (id_vis, id_cli, id_pe, fecha_vis);
end
$
call pia_netflix.Insertar_Actor(1,'Tom Cruise','1975-05-17','Los Angeles, CA, USA');
call pia_netflix.Insertar_Actor(2,'Robert De Niro','1965-08-21','Dallas, TX, USA');
call pia_netflix.Insertar_Actor(4,'Brad pitt','1975-12-01','San Diego, CA, USA');
call pia_netflix.Insertar_Actor(3,'Leonardo DiCaprio','1975-03-22','Los Angeles, CA, USA');
call pia_netflix.Insertar_Actor(5,'Tom Hanks','1965-08-01','Los Angeles, CA, USA');

call pia_netflix.Insertar_TipoGenero(1,'Terror');
call pia_netflix.Insertar_TipoGenero(2,'Comedia'); 
call pia_netflix.Insertar_TipoGenero(3,'Suspenso');
call pia_netflix.Insertar_TipoGenero(4,'Accion'); 
call pia_netflix.Insertar_TipoGenero(5,'Drama');  

call pia_netflix.Insertar_Membresia(1,'Básico',129,'Una Cuenta y 720p');
call pia_netflix.Insertar_Membresia(2,'Estandar',196,'Dos Cuentas y 1080p');  
call pia_netflix.Insertar_Membresia(3,'Premium',229,'Cinco cuentas y 4K');
call pia_netflix.Insertar_Membresia(4,'Niños',100,'tres cuentas con canales infantiles'); 
call pia_netflix.Insertar_Membresia(5,'Deportes',350,'eventos deportivos en vivo');  

call pia_netflix.Insertar_Productora(1,'Disney');
call pia_netflix.Insertar_Productora(2,'NBCUniversal');
call pia_netflix.Insertar_Productora(3,'Warner Bros');
call pia_netflix.Insertar_Productora(4,'Paramount');
call pia_netflix.Insertar_Productora(5,'20th century fox');

call pia_netflix.Insertar_Pelicula(1,2,'Shrek 1','2002-06-27','015432',1);
call pia_netflix.Insertar_Pelicula(2,4,'Mision Imposible','1996-12-09','020354',3);
call pia_netflix.Insertar_Pelicula(3,4,'TOP GUN','1986-05-22','013155',2);
call pia_netflix.Insertar_Pelicula(4,5,'El irlandes','2019-12-01','022231',3);  
call pia_netflix.Insertar_Pelicula(5,1,'Buenos Muchachos','1990-02-07','014523',4);
call pia_netflix.Insertar_Pelicula(6,3,'Taxi Driver','1976-11-11','012159',1);
call pia_netflix.Insertar_Pelicula(7,5,'Guason','2019-02-03','023112',2);
call pia_netflix.Insertar_Pelicula(8,2,'Rapidos y Furioso','1993-06-21','031243',3);
call pia_netflix.Insertar_Pelicula(9,5,'El Padrino','1990-09-12','021323',4);
call pia_netflix.Insertar_Pelicula(10,1,'La llorona','2012-06-30','012345',1);

call pia_netflix.Insertar_ActorPelicula(1,1,4);
call pia_netflix.Insertar_ActorPelicula(2,2,1);
call pia_netflix.Insertar_ActorPelicula(3,3,1);
call pia_netflix.Insertar_ActorPelicula(4,4,3);
call pia_netflix.Insertar_ActorPelicula(5,5,2);
call pia_netflix.Insertar_ActorPelicula(6,6,5);
call pia_netflix.Insertar_ActorPelicula(7,7,5);
call pia_netflix.Insertar_ActorPelicula(8,8,1);
call pia_netflix.Insertar_ActorPelicula(9,9,3);
call pia_netflix.Insertar_ActorPelicula(10,10,4);

call pia_netflix.Insertar_Cliente(1,'Edgar Zamora Saucedo','zamorasaucedoedgar@gmail.com','8102125432','solidaridad / orto 302','2002-06-27','3454323424353545',3);
call pia_netflix.Insertar_Cliente(2,'Daniel Cruz Cortez','danydanykawa@gmail.com','8172635467','barrio moderna / limon 4994','1999-01-20','7612357216767921',2);
call pia_netflix.Insertar_Cliente(3,'Jesus Gutierrez Lozano','JGL007psp@gmail.com','8132852574','barr{io san Jorge/ Freud 105','1989-12-25','5676536597352571',2);
call pia_netflix.Insertar_Cliente(4,'Maria de la cruz martines garcia','mari45uwu@gmail.com','8109341223','barrio del prado/ amatista 555','2002-09-09','1937342682426958',1);
call pia_netflix.Insertar_Cliente(5,'Ana Eli Rivas Garza','anabanana78@gmail.com','8187987698','barrio del queso / contreras 778','1997-11-17','9161322533977431',1);

call pia_netflix.Insertar_Visualizacion(1,4,4,'2019-02-21');
call pia_netflix.Insertar_Visualizacion(2,3,1,'2019-02-22');
call pia_netflix.Insertar_Visualizacion(3,5,7,'2019-03-02');
call pia_netflix.Insertar_Visualizacion(4,1,2,'2019-03-14');
call pia_netflix.Insertar_Visualizacion(5,3,3,'2019-03-20');
call pia_netflix.Insertar_Visualizacion(6,4,6,'2019-04-04');
call pia_netflix.Insertar_Visualizacion(7,2,5,'2019-04-16');
call pia_netflix.Insertar_Visualizacion(8,2,9,'2019-04-29');
call pia_netflix.Insertar_Visualizacion(9,1,8,'2019-05-01');
call pia_netflix.Insertar_Visualizacion(10,1,10,'2019-05-17');
