insert into homem(
nome
)values('rodrigo');
insert into mulher(nome)values('alice');
create table if not exists homem(
id int primary key auto_increment,
nome varchar(100));
create table if not exists mulher (
id int primary key auto_increment,
nome varchar(100)
);
select * from homem;
create database novo; use novo;
create table if not exists relacionamento(
id int primary key auto_increment,
homemid int,
mulherid int,
foreign key(homemid)references homem(id),
foreign key(homemid)references mulher(id),
foreign key(mulherid)references mulher(id),
foreign key(mulherid)references homem(id)
);
insert into relacionamento(homemid,mulherid)values(1,1);
select homem.nome,mulher.nome from mulher left join homem on 
homem.id=mulher.id;
