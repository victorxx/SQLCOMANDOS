create table if not exists dado(
id int primary key auto_increment,
nome text
);
alter table dado drop column id;

alter table dado add column id int;

alter table dado  add primary key(id);
