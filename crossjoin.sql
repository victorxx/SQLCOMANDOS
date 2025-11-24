create table if not exists produto(
id int primary key auto_increment,
nome varchar(300)
);
create table if not exists cores(
id int primary key auto_increment,
cor varchar(300)
);
insert into cores(cor)values('azul'),('verde'),('lilas');
insert into produto(nome)values('rodrigo'),('alice'),('mathesu');
select p.nome,c.cor from produto p cross join cores c on p.id=c.id;
