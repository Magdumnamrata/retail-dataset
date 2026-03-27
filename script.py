#We have  imported this package
import pandas as pd
import numpy as np

# We had load datasets into python using path
df = pd.read_csv("D:/Infotact project 1/archive/Retail_Transactions_Dataset.csv")
df.head()

#this is cleaning process we have to clean data from datasets
df.info()
df.describe()
df.isnull().sum()

# we have to remove duplicate value or data
df = df.drop_duplicates()

# handle missing values from dataset
df = df.dropna()

# we have to change date format
df['Date'] = pd.to_datetime(df['Date'])

# we have to change date format for dashboard
df['Month'] = df['Date'].dt.month
df['Day'] = df['Date'].dt.day_name()
df['Year'] = df['Date'].dt.year

# we have to check revenue of datasaet
df['Revenue'] = df['Total_Items'] * df['Total_Cost']

# we have to export cleaned data to csv
df.to_csv("cleaned_retail_data.csv", index=False)