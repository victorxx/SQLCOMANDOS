create table if not exists clientes(
id int primary key auto_increment,
nome varchar(100),
idade int
);

ALTER TABLE CLIENTES DROP COLUMN EMAIL;

