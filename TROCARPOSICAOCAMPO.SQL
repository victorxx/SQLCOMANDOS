create table if not exists dado(
id int primary key auto_increment,
nome varchar(100)
);
alter table dado add column idade int;
select * from dado;
ALTER TABLE DADO modify IDADE INT AFTER ID;
