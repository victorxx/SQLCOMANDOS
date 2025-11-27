create table if not exists contas
(
id int primary key,
saldo decimal(10,2)
);
insert into contas(id,saldo)values(1,10000),
(2,20000),(3,30000);

start transaction;
update contas set saldo=saldo-100 where id=1;
select sleep(5);
update contas set saldo=saldo+100 where id=2;
commit;
