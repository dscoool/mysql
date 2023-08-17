import pymysql
import pandas
# MySQL Connection 연결
conn = pymysql.connect(host='localhost', user='root', password='0000',
                       db='market', charset='utf8')
 
# Connection 으로부터 Cursor 생성
curs = conn.cursor()
# SQL문 실행
sql = "SELECT * FROM lge"
curs.execute(sql)
 
# 데이타 Fetch
result = curs.fetchall()
df = pandas.DataFrame(result)
     # 전체 rows
# mysql에서 불러온 내용 csv로 저장하기!!
df.to_csv('lge.csv')
print("아래와 같은 내용을 lge.csv로 저장합니다!!")
print(df.head(10))
# Connection 닫기
conn.close()