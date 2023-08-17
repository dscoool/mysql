from bs4 import BeautifulSoup
import urllib.request as req
import pymysql 

url = "https://finance.naver.com/marketindex/"

res = req.urlopen(url)
soup = BeautifulSoup(res,"html.parser", from_encoding='euc-kr')

name_nation = soup.select('h3.h_lst > span.blind')
name_price = soup.select('span.value')


 

conn = pymysql.connect(host='localhost', user='root', password='0000', db='naverfinance', charset='utf8') 
cursor = conn.cursor() 
i = 0
for c_list in soup:
     try:
          print(i+1,name_nation[i].text, name_price[i].text)
          i = i + 1
          sql = "INSERT INTO naverfinance.market (No, ,) VALUES (%s, %s, %s)" 
          cursor.execute(sql,("developer_lim@limsee.com", "AI")) 

     except IndexError:
          pass

conn.commit() 
conn.close() 