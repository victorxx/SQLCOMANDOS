import mysql.connector 
from mysql.connector import Error
def logar():
    try:
        conexao=mysql.connector.connect(
            host='localhost' ,
            user='vitor'  ,
            password='12345',
            database='novo'
        )
        if conexao.is_connected():
            cursor=conexao.cursor()
            cursor.execute('select * from casas')
            resultado=cursor.fetchall()
            for x in resultado:
                print(x)
    except Error as err:
        print('ok deu algo errado')

    finally:
        if conexao.is_connected():
            conexao.close()
            print('fechando a conexão')

logar()



