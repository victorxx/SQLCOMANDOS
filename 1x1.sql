create table if not exists pessoa(
id int primary key auto_increment,
nome varchar(100)not null);
create table if not exists cpf(
id int primary key auto_increment,
cpf int not null,
cpf_id int unique not null,
foreign key(cpf_id)references pessoa(id)
);
insert into pessoa(nome)values('vitor');
insert into cpf (cpf,cpf_id )values(1111,1);
set sql_safe_updates=0;
update cpf set cpf=1310 where id=1;
select * from cpf;

select * from pessoa left join cpf on pessoa.id=cpf.cpf_id;
