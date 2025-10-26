from playwright.sync_api import sync_playwright
import mysql.connector
import time


links=set()
with sync_playwright() as p:
    brower=p.chromium.launch(headless=False)
    page=brower.new_page()
    page.goto('https://www.youtube.com/results?search_query=luala+humor')
    page.wait_for_load_state('load')
    time.sleep(4)
    for  x in page.locator('#video-title').all():
        href=x.get_attribute('href')
        if href and href.startswith('/watch'):
            links.add('https://www.youtube.com'+href)
    brower.close()
    conexao=mysql.connector.connect(
        host='localhost',
        user='vitor',
        password='12345',
        database='novo'
    )
    if conexao.is_connected():
        print('conectado ao banco com sucesso...')
        cursor=conexao.cursor()
        for link in links:
            cursor.callproc('TEXTO',(link,))
            conexao.commit()
            print('link inserido com sucesso...')
    brower.close()
    conexao.close()
