
# Lesson 24 - Sales Summary Report

import pandas as pd

# Read the CSV file
df = pd.read_csv("sales.csv")

print("Original Sales Data:")
print(df)

# Calculate Total Sales
total_sales = df["Sales"].sum()

# Calculate Total Profit
total_profit = df["Profit"].sum()

# Calculate Overall Profit Margin
overall_margin = (total_profit / total_sales) * 100

# Round to 2 decimal places
overall_margin = round(overall_margin, 2)

# Group total Sales by Product
product_sales = df.groupby("Product")["Sales"].sum()

# Find the best-selling product
best_product = product_sales.idxmax()

# Find the highest product sales
highest_sales = product_sales.max()

# Display the Sales Summary Report
print("===== SALES SUMMARY REPORT =====")

print("Total Sales:", total_sales)
print("Total Profit:", total_profit)
print("Overall Profit Margin:", overall_margin, "%")
print("Best-Selling Product:", best_product)
print("Highest Product Sales:", highest_sales)


# Create a summary report table
report = pd.DataFrame({
    "Metric": [
        "Total Sales",
        "Total Profit",
        "Overall Profit Margin (%)",
        "Best-Selling Product",
        "Highest Product Sales"
    ],
    "Value": [
        total_sales,
        total_profit,
        overall_margin,
        best_product,
        highest_sales
    ]
})

# Display the report table
print("Final Report Table:")
print(report)

# Export the report to CSV
report.to_csv("sales_summary.csv", index=False)

print("Sales Summary Report saved successfully!")
