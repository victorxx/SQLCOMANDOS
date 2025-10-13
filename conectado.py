import mysql.connector
from mysql.connector import Error

try:
    conexao = mysql.connector.connect(
        host='localhost',
        user='vitor',
        password='12345',        # senha vazia: só em dev/local e se o servidor permitir
        database='novo'
    )

    if conexao.is_connected():
        print('Conectado com sucesso!')
        # exemplo: pegar versão do servidor
        info = conexao.get_server_info()
        print('Versão do MySQL:', info)

except Error as err:
    print('Erro ao conectar:', err)

finally:
    # fecha se conectado
    if 'conexao' in locals() and conexao.is_connected():
        conexao.close()
        print('Conexão fechada.')
