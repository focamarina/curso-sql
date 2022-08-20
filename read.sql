create table user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

insert into user (name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
insert into user (name, edad, email) values ('Layla', 15, 'Layla@gmail.com');
insert into user (name, edad, email) values ('Nicolas', 36, 'nico@gmail.com');
insert into user (name, edad, email) values ('Chanchito', 7, 'chanchito@gmail.com');

-- Leer de diferentes formas las tablas
select * from user;
select * from user limit 1;
select * from user where edad > 15;
select * from user where edad >= 15;
select * from user where edad > 20 and email='nico@gmail.com';
select * from user where edad > 20 or email='Layla@gmail.com';
select * from user where email != 'Layla@gmail.com';
select * from user where edad between 15 and 30;
select * from user where email like '%gmail%';
select * from user where email like '%gmail.com';
select * from user where email like 'oscar%';

-- Ordenar las filas de la tabla dependiendo del orden
select * from user order by edad asc;
select * from user order by edad desc;

-- Seleccionar por rango un registro
select max(edad) as mayor from user;
select min(edad) as menor from user;

-- Seleccionar por columnas
select id, name from user;
select id, name as Nombre from user;