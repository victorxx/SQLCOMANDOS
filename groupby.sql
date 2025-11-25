create table if not exists pessoa(
id int primary key auto_increment,
nome varchar(300)
);
insert into pessoa(nome)values('rodrigo'),('marcelo'),('ricardo');
insert into pedido(id_pedido,valor)values(1,320);
select p.nome,sum(pp.valor) from pessoa p join pedido pp on
p.id=pp.id_pedido group by p.nome;
create table if not exists pedido(
id int primary key auto_increment,
id_pedido int,
valor int
);
