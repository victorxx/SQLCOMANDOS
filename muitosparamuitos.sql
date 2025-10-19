create table if not exists usuario(
id int primary key auto_increment,
nome varchar(100));

create table if not exists carro(
id int primary key auto_increment,
nome varchar(100),
dias int);

create table if not exists aluga(
id int primary key auto_increment,
id_aluguel int,
foreign key(id_aluguel)references carro(id)
);
insert into usuario(nome)values('ricardo');
insert into carro(nome)values('chevrolet onix');
insert into aluga(id_aluguel)values(1);
select usuario.nome,carro.nome from usuario left join carro on
usuario.id=carro.id;
