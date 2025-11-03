create table if not exists alunos(
id int primary key auto_increment,
nome varchar(100),
cidades varchar(100),
idade int
);
insert into alunos(nome,cidades,idade)values(
'victor','vilavelha',32);
select * from alunos;
insert into alunos(nome,cidades,idade)values('tiago','vitoria',18);
select * from alunos where cidades='vilavelha' or idade<=32;
