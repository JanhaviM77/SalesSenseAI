
# Lesson 22 - Sales vs Profit Comparison

import pandas as pd
import matplotlib.pyplot as plt

# Read the CSV file
df = pd.read_csv("sales.csv")

print("Our Sales Data:")
print(df)

# Group products and calculate totals
comparison = df.groupby("Product")[["Sales", "Profit"]].sum()

print("Sales and Profit Comparison:")
print(comparison)

# Create a comparison bar chart
ax = comparison.plot(kind="bar", color=["skyblue", "lightgreen"])
# Add numbers above both sets of bars
for container in ax.containers:
    ax.bar_label(container)

# Add chart title
plt.title("Sales vs Profit by Product")

# Add axis labels
plt.xlabel("Product")
plt.ylabel("Amount")

# Show which color represents Sales and Profit
plt.legend()

# Adjust spacing and display the chart
plt.tight_layout()
plt.savefig("comparison_chart.png")
plt.show()
