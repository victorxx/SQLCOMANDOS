create table if not exists usuario(
id int primary key auto_increment,
nome varchar(300),
saldo int
);
insert into usuario(nome,saldo)values('victorsaib',300);
insert into usuario(nome,saldo)values('marta',30000);
set sql_safe_updates=0;
begin;
update usuario set saldo=saldo-100 where id=1;
update usuario set saldo=saldo+100 where id=2;
commit;
select * from usuario;
 
