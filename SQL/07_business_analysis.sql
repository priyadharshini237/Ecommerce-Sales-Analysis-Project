use ecommerce_analysis;

#Total Revenue#
select sum(Total_Amount) from orders;
#Monthly Revenue Trend#
select month(Order_Date_New) AS MONTH,
	   sum(Total_Amount) as Total
from orders
group by month(Order_Date_New)
order by month;

#Top Selling Categories#
select p.Category,
       SUM(o.Total_Amount) AS Revenue
from orders o
join products p
on o.Product_ID = P.Product_ID
group by p.Category
order by revenue desc;

#Highest Revenue Products#
select p.Product_Name,
	sum(Total_Amount) AS Revenue
from orders o
join products p
on o.Product_ID = p.Product_ID
group by p.Product_Name
order by revenue desc
limit 10;

#Top Customers#
select c.Customers_name,
        sum(Total_Amount) as customers_high
from orders o
join customers c
on o.Customer_ID = c.Customer_ID
group by c.Customers_name
order by customers_high desc
limit 10;

#customers by city#
select City,
      count(Customer_ID) as Top_customers
from customers
group by city
order by Top_customers desc;

#Repeat Customers#
select Customer_ID,
       count(Order_ID) as Total_orders
from orders
group by Customer_ID
HAVING COUNT(Order_ID) > 0;

#Payment Method Usage#
select Payment_Mode,
      count(*) as usage_ck
from payments
group by Payment_Mode
order by usage_ck desc;

#Failed Payments#
Select Payment_Status,
       count(*) as failed_attempt
from payments
group by Payment_Status
order by failed_attempt desc;

#Most Ordered Products#
select p.Product_Name,
       count(o.Order_ID) as most_high
from orders o
join products p
on o.Product_Name = p.Product_Name
group by p.Product_Name
order by most_high desc;

#Average Order Value#
select avg(Total_amount) as average_orders from orders;

#Revenue by Payment Method#
select pay.Payment_Mode,
       sum(Total_Amount) as Total_revenue
from orders o
join payments pay
on o.Payment_Mode = pay.Payment_Mode
group by pay.Payment_Mode
order by Total_revenue desc;

#Category-wise Profit Analysis#
select Category,
       sum(Profit_Margin) as category_wise
from products
group by Category
order by category_wise desc;

