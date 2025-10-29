create table if not exists credito(
id int primary key auto_increment,
grana int
);
insert into credito(grana)values(100);
set sql_safe_updates=0;
delimiter //
create procedure inserir(in p int)
begin
update credito set grana=grana+p where id=1;
end//
delimiter // 
create procedure remover(in p int)
begin
update credito set grana=grana-p where id=1;
end//
select * from credito;

import mysql.connector
import time
from flask import Flask

app=Flask(__name__)
@app.route('/soma/<numero>')
def soma(numero):
    conexao=mysql.connector.connect(
        host='localhost',
        user='vitor',
        database='novo',
        password='12345'   
    )
    if conexao.is_connected():
        cursor=conexao.cursor()
        cursor.callproc('inserir',(numero,))
        conexao.commit()
        return 'inserido com sucesoo'
    conexao.close()



app.run(debug=True)
