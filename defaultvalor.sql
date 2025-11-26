create table if not exists cliente(
id int primary key auto_increment,
nome varchar(100),
idade int
);
update cliente set email='rodrigo@gmail.com' where id=1;
alter table cliente add column email varchar(100);
alter table cliente modify idade int default 18;
select * from cliente;
set sql_safes_updates=0;
insert into cliente(nome)values('rodrigo');
