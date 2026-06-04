use ecommerce_analysis;
CREATE TABLE final_joined_table AS
SELECT 
    o.*,

    c.Customers_name,
    c.Gender,
    c.Age,
    c.Email,
    c.Phone,
    c.City,
    c.State,
    c.Country,
    c.Pincode,
    c.Registration_Date,
    c.Membership_label,
    c.Loyalty_Points,
    c.Preferred_Device,
    c.Date_of_Birth_New,

    pay.Payment_ID,
    pay.Payment_Status,
    pay.tarnsaction_fee,
    pay.Refund_Amount,
    pay.Refund_Date_New,
    pay.Payments_Dates,

    
    p.Category,
    p.Sub_Category,
    p.Brand,
    p.SKU,
    p.Cost_Price,
    p.Selling_Price,
    p.Profit_Margin,
    p.Discount,
    p.Stock_Quantity,
    p.Reorder_Level,
    p.Product_Rating,
    p.Product_Status,
    p.Launch_Dates_New

FROM orders o

JOIN customers c
ON o.Customer_ID = c.Customer_ID

JOIN payments pay
ON o.Order_ID = pay.Order_ID

JOIN products p
ON o.Product_ID = p.Product_ID;