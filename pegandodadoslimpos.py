from mysql.connector import Error
import mysql.connector


try:
    conexao=mysql.connector.connect(
        host='localhost',
        password='12345',
        database='novo',
        user='vitor'

    )
    if conexao.is_connected():
        print('dentro')
        cursor=conexao.cursor()
        cursor.callproc('soma',(1,2))
        for x in cursor.stored_results():
            texto=str(x.fetchall())
            mudar=texto.replace('['," ").replace(']'," ").replace('(','').replace(')','').replace(',',' ')
            print(mudar)
            
            

except Error as err:

    print('error')
finally:
    if conexao.is_connected:
        conexao.close()

