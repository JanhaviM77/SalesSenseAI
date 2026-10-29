# This imports Pandas, our Python data-analysis library.
import pandas as pd

#This tells Python to open sales.csv and turn its contents into a table called df.
df = pd.read_csv("sales.csv")

print("our sales data:")
print(df)

print("Total Sales :",df["Sales"].sum()) #This selects the Sales column and adds all the values together.
print("Total profit :",df["Profit"].sum()) #This selects the Profit column and adds all the values together.


#filter product by profit
#find product's with profit greater than 40
high_profit = df[df["Profit"]>40]

print("Products with profit greater than 40: ")
print(high_profit)

#Sort products from highest to lowest
sorted_sales = df.sort_values(
    by="Sales",
    ascending=False
)

print("Product ranked by sales :")
print(sorted_sales)

#find best product selling - program to answer it automatically.
best_products = df.loc[df["Sales"].idxmax()]

print("Best - selling product :",best_products)

