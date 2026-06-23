create database ventas;
use ventas;

create table categoria( 
id_categoria int auto_increment, 
nombre varchar(50) not null ,
primary key ( id_categoria )
 );
 
 create table vendedor(
  id_vendedor int auto_increment,
  nombre varchar(100) not null,
  primary key ( id_vendedor )
 
 );
 
 create table cliente(
 id_cliente int auto_increment,
 nombre varchar(100) not null,
 cedula varchar(20) not null unique,
 telefono varchar(15) not null,
 primary key (id_cliente)
 );
 
 create table producto(
 id_producto int auto_increment,
 nombre varchar(100) not null,
 precio decimal(10,2) not null,
 id_categoria int not null,
 primary key( id_producto ),
 foreign key (id_categoria) references categoria(id_categoria)
 );
 
 create table venta ( 
 id_venta int auto_increment,
 fecha date not null,
 id_cliente int not null,
 id_vendedor int not null,
 foreign key (id_cliente) references cliente(id_cliente),
 foreign key (id_vendedor) references vendedor(id_vendedor),
 primary key (id_venta)
 );
 
 
 create table detalle_venta ( 
 id_detalle_venta int  auto_increment,
 cantidad int not null,
 id_venta int not null,
 id_producto int not null,
 foreign key (id_venta) references venta(id_venta),
 foreign key (id_producto) references producto(id_producto),
 primary key (id_detalle_venta)
 );
 