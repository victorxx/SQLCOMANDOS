create table if not exists clientes(
id int auto_increment primary key,
nome varchar(100) not null,
email varchar(100) unique not null);

insert into clientes(nome,email)values
('Ana Souza', 'ana@email.com'),
('Carlos Lima', 'carlos@email.com'),
('Beatriz Melo', 'beatriz@email.com');

delimiter //
create procedure pegar(
in p_nome varchar(100),
out p_email varchar(100)
)
BEGIN select email into p_email from clientes
where nome=p_nome
limit 1;
end//
delimiter ;
set @app='';
call pegar('Carlos',@app);
select @app as email_encontrado;
