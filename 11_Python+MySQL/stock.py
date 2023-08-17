# %matplotlib inline
# python.exe -m pip install pandas, numpy, matplotlib, yfinance
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import yfinance as yf

samsung_df = yf.download('005930.KS',
                      start='2020-01-01',
                      end='2021-06-02',
                      progress=False)

samsung_df = samsung_df[["Close"]]
# 데이터 전처리 - data cleansing
samsung_df = samsung_df.reset_index()
samsung_df.columns = ['day', 'price']
samsung_df['day'] = pd.to_datetime(samsung_df['day'])

samsung_df.index = samsung_df['day']
samsung_df.set_index('day', inplace=True)

print(samsung_df)

