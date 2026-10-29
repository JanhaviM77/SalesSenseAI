import pandas as pd

#our toy shop's sales data 
data = {
    "Product" : ["Toy car", "Teddy Bear", "Toy Ball", "Toy Train"],
    "Sales" : [150, 250, 100, 300],
    "Profit" : [50, 80, 30, 90]
}

#turns our data into table form
df = pd.DataFrame(data)

# print(df["Sales"].sum()) # calculate the total sales 

#calculate total sales and profit
total_sales = df["Sales"].sum()
total_profit = df["Profit"].sum()

print("our sales table:")
print(df)

print("Total Sales ", total_sales)
print("Total Profit", total_profit)

#find the product with the highest sales
best_product = df.loc[df["Sales"].idxmax(),"Product"]

print("product with the highest sales:",best_product)