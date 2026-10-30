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

print("Best - selling product :")
print(best_products)


#find the product with the highest profit
best_profit = df.loc[df["Profit"].idxmax()]

print("Product with highest Profit :")
print(best_profit)

#find the product with lowest profit
lowest_profit = df.loc[df["Profit"].idxmin()]

print("Product with lowest profit :")
print(lowest_profit)

#Average product from highest profit to lowest profit
profit_ranking = df.sort_values(
    by="Profit", 
    ascending=False)

print("Products ranked by Profit: ")
print(profit_ranking)

# arrange products from lowest profit to highest profit :
profit_ranking = df.sort_values(
    by="Profit",
    ascending=True
)

print(profit_ranking)


# Calculate each product's percentage of total sales  --- now it can  calculate how much each product contributes to total sales. 
total_sales = df["Sales"].sum()

df["Sales Share (%)"] = (
df["Sales"] /total_sales *100
).round(2)

print("Each product's share of total share: ")
print(df[["Product","Sales","Sales Share (%)"]])


#find products with profit below 60
low_profit = df[df["Profit"] < 60]

print("products with profit below 60 :")
# print(low_profit[["Product", "Sales", "Profit"]])  -- we can also type this line as it will only give this 
print (low_profit)


#  Find products with sales above 100 AND profit below 60
selected_products =df[
    (df["Sales"] > 100) &
     (df["Profit"] < 60)
] 

print("product with high sales but low profit :")
print(selected_products[["Product","Sales","Profit"]])

#Find products with high sales OR low profit  -- OR

selected_products_or =df[
    (df["Sales"]>100) |
    (df["Profit"]< 60)
]
print("products with high sales OR low profit : ")
print(selected_products_or[["Product","Sales","Profit"]])

# Group products and calculate sales  - using groupby()
Products_sales =df.groupby("Product")["Sales"].sum()

print("Total sales for each products :")
print(Products_sales)

#calculate total profit and sales for each product
product_Summery = df.groupby("Product")[["Sales","Profit"]].sum()

print("Sales and Profit Summary:")
print(product_Summery)

#calculate average sales for each product 
average_sales = df.groupby("Product")["Sales"].mean()

print("Average Sales of each product is :")
print(average_sales)

# Calculate average sales and profit for each product
average_summary = df.groupby("Product")[["Sales", "Profit"]].mean()

print("Average Sales and Profit for each product:")
print(average_summary)











      
