create database cursosql;
show databases;
use cursosql;
create table animales (
	id int,
	tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);

-- insert into animales (tipo, estado) values ('chanchito', 'feliz');

alter table animales modify column id int auto_increment;

show create table animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

insert into animales (tipo, estado) values ('chanchito', 'feliz');
insert into animales (tipo, estado) values ('dragon', 'feliz');
insert into animales (tipo, estado) values ('Felipe', 'triste');

select * from animales;
select * from animales where id=1;
select * from animales where estado='feliz';
select * from animales where estado='feliz' and tipo='Felipe';

update animales set estado='feliz' where id=4;
update animales set estado='triste' where tipo='dragon';
-- Update tambien arrojará error 1175

delete from animales where id=2;