# Lesson 20 - First Sales Bar Chart

import pandas as pd
import matplotlib.pyplot as plt

# Read the sales CSV file
df = pd.read_csv("sales.csv")

# Calculate total sales for each product
total_sales = df.groupby("Product")["Sales"].sum()

# Print total sales
print("Total Sales by Product:")
print(total_sales)

# Create a bar chart
total_sales.plot(kind="bar", color="skyblue")

#display sales number above the bars
for index, value in enumerate(total_sales):
    plt.text(index, value + 5, str(value), ha="center")

# Add chart title
plt.title("Total Sales by Product")

# Add axis labels
plt.xlabel("Product")
plt.ylabel("Total Sales")

# Adjust spacing
plt.tight_layout()

#to save chart as an image
plt.savefig("sales_chart.png")

# Display the chart
plt.show()