use ecommerce_analysis;
drop table if exists payments;
create table payments
(
   Payment_ID varchar(40),
   Order_ID varchar(40),
   Payment_Date varchar(100),
   Payment_Mode varchar(50),
   Payment_Status varchar(50),
   tarnsaction_fee varchar(100),
   Refund_Amount varchar(60),
   Refund_Date varchar(100)
);


   




   

