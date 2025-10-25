create table if not exists casa
(
id int primary key auto_increment,
nome varchar(300)
);
create database novo; use novo;
insert into casa(nome)values('augusto');
select * from casa;
alter table casa
add column idade int;
select * from casa;
update casa set idade=1 where id=1;
select * from casa;
