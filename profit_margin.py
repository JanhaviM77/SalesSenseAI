
# Lesson 23 - Profit Margin Analysis

import pandas as pd
import matplotlib.pyplot as plt

# Read the CSV file
df = pd.read_csv("sales.csv")

# Group Sales and Profit by Product
product_summary = df.groupby("Product")[["Sales", "Profit"]].sum()

# Calculate Profit Margin percentage
product_summary["Profit_Margin"] = (
    product_summary["Profit"] / product_summary["Sales"]
) * 100

# Round Profit Margin to 2 decimal places
product_summary["Profit_Margin"] = product_summary["Profit_Margin"].round(2)

# Display the table
print("Profit Margin by Product:")
print(product_summary)

# Find the product with highest Profit Margin
highest_product = product_summary["Profit_Margin"].idxmax()

print("Product with Highest Profit Margin:")
print(highest_product)

# Find the highest percentage
highest_margin = product_summary["Profit_Margin"].max()

print("Highest Profit Margin:")
print(highest_margin)

# Create the orange bar chart
ax = product_summary["Profit_Margin"].plot(
    kind="bar",
    color="orange"
)

# Add percentage labels
for container in ax.containers:
    ax.bar_label(container, fmt="%.2f%%")

# Add chart title and labels
plt.title("Profit Margin by Product")
plt.xlabel("Product")
plt.ylabel("Profit Margin (%)")
ax.yaxis.set_major_formatter("{x:.0f}%")

# Save and display the chart
plt.tight_layout()
plt.savefig("profit_margin.png")
plt.show()
