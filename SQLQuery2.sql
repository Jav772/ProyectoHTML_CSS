create database serviciotecUH

use serviciotecUH
go

create table Usuarios(
UsuarioID int identity primary key,
Nombre varchar(50) not null,
Correo varchar (50) null,
Telefono varchar (12) null
)

Create table Tecnicos(
TecnicoID int identity primary key,
Nombre varchar(50) not null,
Especialidad varchar (50) not null
)

create table Equipos(
EquipoID int identity primary key,
TipoEquipo varchar(50) not null,
Modelo varchar (50) null,
UsuarioID int foreign key references Usuarios(UsuarioID)
)

create table Reparaciones(
ReparacionID int identity primary key,
Fecha datetime,
Estado varchar(12) not null,
EquipoID int foreign key references Equipos(EquipoID)
)

create table Asignaciones(
AsignacionID int identity primary key,
ReparacionID int foreign key references Reparaciones(ReparacionID),
TecnicoID int foreign key references Tecnicos(TecnicoID),
Fecha datetime
)

create table DetalleReparación(
DetalleID int identity primary key,
ReparacionID int foreign key references Reparaciones(ReparacionID),
Descripcion varchar(100),
FechaInicio datetime,
FechaFin datetime
)

)
