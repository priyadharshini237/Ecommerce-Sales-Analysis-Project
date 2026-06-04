import pandas as pd
from sqlalchemy import create_engine

engine = create_engine(
    "mysql+pymysql://root:priyatae@localhost/ecommerce_analysis"
)

query = "SELECT * FROM final_joined_table"

ecommerce = pd.read_sql(query, engine)

#Total Revenue
Total_Revenue = ecommerce["Total_Amount"].sum()
print(Total_Revenue)

#Average Order Value
Average_Order_Value = ecommerce["Total_Amount"].mean()
print(Average_Order_Value)

#Total Orders
Total_Orders = ecommerce['Order_ID'].nunique()
print(Total_Orders)

#Total Customers
Total_Customers = ecommerce['Customer_ID'].nunique()
print(Total_Customers)

#Top Categories by Revenue
Top_Categories = ecommerce.groupby("Category")["Total_Amount"].sum().sort_values(ascending=False).head(10)
print(Top_Categories)

#Most Ordered Products
Most_oderes = ecommerce["Product_Name"].value_counts().head(10)
print(Most_oderes)

#Highest Profit Categories
Higest_profit = ecommerce.groupby("Category")["Profit_Margin"].sum().sort_values(ascending=False).head(10)
print(Higest_profit)

#Top Spending Customers
Top_Customers = ecommerce.groupby("Customers_name")["Total_Amount"].sum().sort_values(ascending=False).head(10)
print(Top_Customers)

#Repeat Customers
Repeat_Customers = ecommerce["Customer_ID"].value_counts().head(10)
print(Repeat_Customers)

#Most Used Payment Method
Most_payment_method = ecommerce['Payment_Mode'].value_counts()
print(Most_payment_method)

#Failed Payments
Failed_Payment = (ecommerce["Payment_Status"]=="Failed").sum()
print(Failed_Payment)

#Order status
Order_counts = ecommerce["Order_Status"].value_counts()
print(Order_counts)

#category wise quantity
Category_quantity = ecommerce.groupby("Category")["Quantity"].sum().sort_values(ascending=False)
print(Category_quantity)

#Payment Success Rate
payment_sucess_rate = (ecommerce["Payment_Status"]== "Success").mean() *100
print(payment_sucess_rate)

#Revenue by City
city_revenue = ecommerce.groupby("City")["Total_Amount"].sum().sort_values(ascending=False)
print(city_revenue)

#Category with High Sales but Low Profit
category_wise = ecommerce.groupby("Category")[["Total_Amount" , "Profit_Margin"]].sum()
print(category_wise)

#brand wise cost price and selling price
brand_price = ecommerce.groupby("Brand")[["Cost_Price" , "Selling_Price"]].sum()
print(brand_price)

#Category wise product rate
product_rating = ecommerce.groupby("Category")["Product_Rating"].value_counts()
print(product_rating)

#age wise subcaegory
age_sub = pd.pivot_table(
    ecommerce,
    values = "Age",
    index = "Gender",
    columns = "Category",
    aggfunc = "value_counts"
)
print(age_sub)

#most preferred device used in sales
most_device = ecommerce.groupby("Preferred_Device")["Total_Amount"].sum()
print(most_device)

#most membership is boughy by gender and city
membership = pd.pivot_table(
    ecommerce,
    values = "City",
    index = "Gender",
    columns = "Membership_label",
    aggfunc ="value_counts"
)
print(membership)