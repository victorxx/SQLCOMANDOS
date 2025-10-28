import mysql.connector
import time

conexao=mysql.connector.connect(
    host='localhost',
    user='vitor',
    database='novo',
    password='12345'
)
if conexao.is_connected():
    print('conectado com sucesso...')
    cursor=conexao.cursor()
    cursor.execute('SELECT * FROM PAGINA LIMIT 1 OFFSET 1')
    linha=cursor.fetchmany()
    print(linha)
    conexao.close()
    print('fechado....')
    
