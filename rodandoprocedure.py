from mysql.connector import Error
import mysql.connector



try:
    conexao=mysql.connector.connect(
        host='localhost',
        user='vitor',
        password='12345',
        database='novo'
    )
    if conexao.is_connected():
        print('ok deu algo errado')
        cursor=conexao.cursor()
        cursor.callproc('ok')
        for resultado in cursor.stored_results():
            print(resultado.fetchall())
            
except Error as err:
    print('ok deu algo errado....')
