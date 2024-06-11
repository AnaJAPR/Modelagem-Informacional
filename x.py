import pandas as pd

df = pd.read_csv('IDHM.CSV')

print(df.columns)
# df.sort_values('IDHM 2010', inplace=True)