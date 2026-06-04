use ecommerce_analysis;
create table orders
(
   Order_ID varchar(50),
   Order_Date int,
   Customer_ID varchar(50),
   Product_ID varchar(50),
   Product_Name varchar(100),
   Quantity int,
   Unit_Price int,
   Discount_Amount int,
   Tax_Amount int,
   Shipping_Charge int,
   Payment_Mode varchar(100),
   Order_Status varchar(100),
   Total_Amount int
);












