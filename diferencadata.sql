create table if not exists
novo(
id int primary key auto_increment,
data_dia datetime
);
insert into novo(data_dia)
values('2017-06-25 09:34:21');
select datediff('2017-08-25 09:34:21',data_dia)
from novo
where id=1;
