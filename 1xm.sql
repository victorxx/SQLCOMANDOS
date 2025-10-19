create table cl(
id int primary key auto_increment ,
nome varchar(100)
);
select cl.nome,ed.endereco from ed left join cl on cl.id=ed.ided;
insert into ed(endereco,ided)values('avedesembargosk',1);
insert into cl(nome)values('rodrigo');
insert into ed(endereco,ided)values('avdesembargador',1);



create table if not exists ed(
id int primary key auto_increment,
endereco varchar(300),
ided int,
foreign key(ided)references cl(id)
);

