import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import yfinance as yf
import pymysql
from sqlalchemy import create_engine

# 이번에는 증권 코드와 기간을 바꾸어 실행해 봅시다!!

# 필요한 모듈 설치!!
# python.exe -m pip install pandas
# python.exe -m pip install numpy matplotlib yfinance pymysql sqalchemy
temp_df = yf.download('066570.KS', #LG전자 종목 번호 066570. KS는 KOSPI를 의미합니다!!
                      start='2015-01-01', #조회할 기간을 지정합니다!!
                      end='2021-06-02',
                      progress=False)
# dataframe의 컬럼 이름 지정!!
column_name=['Open','High','Low','Close','Volume']

# 저장된 데이터를 깔끔하게 해 주기 위해, df라는 
# dataframe을 새로 생성해 줍니다!!
df = pd.DataFrame(temp_df[['Open','High','Low','Close','Volume']],
               columns=column_name)
# index를 설정합니다!!
df = df.reset_index()
# 'Date'컬럼의 값을, 날짜 변수(DateTime)로 바꾸어 줍니다!!
df['Date'] = pd.to_datetime(df['Date'])


# MySQL 접속!!

# mysql 접속정보 입력
# mysql+pymysql://[사용자이름]:[패스워드]@localhost/[db이름] 으로 수정해 줍니다!!
db_connection_str = 'mysql+pymysql://root:0000@localhost/market'
db_connection = create_engine(db_connection_str)
conn = db_connection.connect()
# 작업한 dataframe을 sql로 내보내기합니다. 테이블은 자동생성됩니다.
# 기존에 테이블이 존재할 경우 해당 내용 뒤에 'append'(계속 이어서 쓰기)됩니다.
table_name='lge'
df.to_sql(name=table_name, con=db_connection, if_exists='append',index=False)  

print("아래 내용을 mysql %s 테이블에 저장합니다\n\n" %table_name, df)

# 실습: 본인이 원하는 증권종목 2개와
# 원하는 기간을 골라 mysql로 저장해 봅시다!!
# 증권코드 참조: http://finance.naver.com/sise/lastsearch2.naver