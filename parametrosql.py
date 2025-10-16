
import mysql.connector
from mysql.connector import Error
try:
    conexao=mysql.connector.connect(
            host='localhost',
            user='vitor',
            password='12345',
            database='novo'

    )
    if conexao.is_connected():
        print('ok deu bom')
        cursor=conexao.cursor()
        cursor.callproc('soma',(1,2))

   
    
except Error as err:
    print('ok deu algo errado....')
