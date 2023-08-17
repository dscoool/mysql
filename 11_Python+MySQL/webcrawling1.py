from bs4 import BeautifulSoup
import urllib.request as req


url = "https://finance.naver.com/marketindex/"

res = req.urlopen(url)
soup = BeautifulSoup(res,"html.parser", from_encoding='euc-kr')

name_nation = soup.select('h3.h_lst > span.blind')
name_price = soup.select('span.value')


i = 0
for c_list in soup:
     try:
          print(i+1,name_nation[i].text, name_price[i].text)
          i = i + 1
     except IndexError:
          pass