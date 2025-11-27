create table if not exists contas(
id int primary key auto_increment,
saldo decimal(10,2)
);
insert into contas(saldo)values(230000),
(10000),(20000);
START TRANSACTION;
SELECT * FROM CONTAS WHERE ID IN (1,2)
FOR UPDATE;
COMMIT;
