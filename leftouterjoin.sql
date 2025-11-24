create table if not exists cliente(
id int primary key auto_increment,
nome varchar(300)
);

create table if not exists produto(
id int primary key auto_increment,
nome varchar(300)
);
insert into cliente(nome)values('rodrigo'),('alice');
insert into produto(nome)values('chocolate'),('morango');
select c.nome,p.nome from cliente c left outer join produto p on c.id=p.id;
