create table if not exists funcionario(
id int primary key auto_increment,
nome varchar(300),
telefone varchar(100),
status varchar(100)
);
set sql_safe_updates=0;
insert into funcionario(nome,telefone,status)values('victor','27999860405','Ativo');
create view visualizar as 
select *  from funcionario where status='Ativo';

select* from visualizar;
