#lesson 21 Profit Chart

import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("sales.csv")

print ("our sales Data:")
print(df)

total_profit = df.groupby("Product")["Profit"].sum()

print("Total Profit by Product:")
print(total_profit)

# add bar chart
total_profit.plot(kind="bar", color="lightgreen")
for index, value in enumerate(total_profit):
    plt.text(index, value + 2, str(value), ha="center")

plt.title("Total Profit by Product")  #gives heading above chart
plt.xlabel("Product")
plt.ylabel("Total Profit")

#display the chart and download it
plt.tight_layout()
plt.savefig("profit_chart.png")
plt.show()