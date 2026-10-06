use supply_chain;
select count(*) from supply_chain_raw;
desc supply_chain_raw;
Alter Table supply_chain_raw
modify column  `Days for shipping (real)` int;
desc supply_chain_raw;
alter table supply_chain_raw 
modify column `Days for shipment (scheduled)` int;

alter table supply_chain_raw
modify column `Benefit per order` Decimal(10,2),
modify column `Sales per customer` Decimal(10,2),
modify column Late_delivery_risk int,
modify column `Category Id` int,
modify column `Customer Id` int,
modify column `Department Id`int,
modify column `Order Customer Id`int,
modify column `Order Item Discount` decimal(10,2),
modify column `Order Item Discount Rate` decimal (10,2),
modify column `Order Item Product Price` decimal(10,2),
modify column `Order Item Profit Ratio` decimal(10,2),
modify column `Order Item Quantity`int,
modify column `Sales` decimal (10,2),
modify column `Order Item Total` decimal(10,2),
modify column `Order Profit Per Order` decimal (10,2),
modify column `Product Price` decimal (10,2);
update supply_chain_raw scr 
set `Customer Zipcode` = null 
where Trim(`customer zipcode`)=' ';

ALTER TABLE supply_chain_raw
MODIFY COLUMN `Customer Zipcode` VARCHAR(10);
ALTER TABLE supply_chain_raw
MODIFY COLUMN `Latitude` DECIMAL(10,7),
modify column `Longitude` Decimal(10,7);

SELECT COUNT(DISTINCT `Customer Id`)
FROM supply_chain_raw scr ;

select count(`customer Id`)
from supply_chain_raw scr 
where scr.`Customer Id` is null;

select count(`customer Id`),`customer country`
from supply_chain_raw scr 
group by `customer country`;

desc supply_chain_raw;

select sum(`benefit per order`),sum(`sales per customer`),sum(Late_delivery_risk),sum(`order item discount`),sum(`order item discount rate`),sum(`order item product price`),sum(`order item profit ratio`),sum(`order item quantity`),sum(`sales`),sum(`order item total`),sum(`order profit per order`),sum(`product price`)
from supply_chain_raw scr ;
SELECT
    SUM(CASE WHEN `Type` IS NULL THEN 1 ELSE 0 END) AS type_nulls,
    SUM(CASE WHEN `Days for shipping (real)` IS NULL THEN 1 ELSE 0 END) AS real_shipping_days_nulls,
    SUM(CASE WHEN `Days for shipment (scheduled)` IS NULL THEN 1 ELSE 0 END) AS scheduled_shipping_days_nulls,
    SUM(CASE WHEN `Benefit per order` IS NULL THEN 1 ELSE 0 END) AS benefit_per_order_nulls,
    SUM(CASE WHEN `Sales per customer` IS NULL THEN 1 ELSE 0 END) AS sales_per_customer_nulls,
    SUM(CASE WHEN `Delivery Status` IS NULL THEN 1 ELSE 0 END) AS delivery_status_nulls,
    SUM(CASE WHEN `Late_delivery_risk` IS NULL THEN 1 ELSE 0 END) AS late_delivery_risk_nulls,
    SUM(CASE WHEN `Category Id` IS NULL THEN 1 ELSE 0 END) AS category_id_nulls,
    SUM(CASE WHEN `Category Name` IS NULL THEN 1 ELSE 0 END) AS category_name_nulls,
    SUM(CASE WHEN `Customer City` IS NULL THEN 1 ELSE 0 END) AS customer_city_nulls,
    SUM(CASE WHEN `Customer Country` IS NULL THEN 1 ELSE 0 END) AS customer_country_nulls,
    SUM(CASE WHEN `Customer Fname` IS NULL THEN 1 ELSE 0 END) AS customer_fname_nulls,
    SUM(CASE WHEN `Customer Id` IS NULL THEN 1 ELSE 0 END) AS customer_id_nulls,
    SUM(CASE WHEN `Customer Lname` IS NULL THEN 1 ELSE 0 END) AS customer_lname_nulls,
    SUM(CASE WHEN `Customer Segment` IS NULL THEN 1 ELSE 0 END) AS customer_segment_nulls,
    SUM(CASE WHEN `Customer State` IS NULL THEN 1 ELSE 0 END) AS customer_state_nulls,
    SUM(CASE WHEN `Customer Street` IS NULL THEN 1 ELSE 0 END) AS customer_street_nulls,
    SUM(CASE WHEN `Customer Zipcode` IS NULL THEN 1 ELSE 0 END) AS customer_zipcode_nulls,
    SUM(CASE WHEN `Department Id` IS NULL THEN 1 ELSE 0 END) AS department_id_nulls,
    SUM(CASE WHEN `Department Name` IS NULL THEN 1 ELSE 0 END) AS department_name_nulls,
    SUM(CASE WHEN `Latitude` IS NULL THEN 1 ELSE 0 END) AS latitude_nulls,
    SUM(CASE WHEN `Longitude` IS NULL THEN 1 ELSE 0 END) AS longitude_nulls,
    SUM(CASE WHEN `Market` IS NULL THEN 1 ELSE 0 END) AS market_nulls,
    SUM(CASE WHEN `Order City` IS NULL THEN 1 ELSE 0 END) AS order_city_nulls,
    SUM(CASE WHEN `Order Country` IS NULL THEN 1 ELSE 0 END) AS order_country_nulls,
    SUM(CASE WHEN `Order Customer Id` IS NULL THEN 1 ELSE 0 END) AS order_customer_id_nulls,
    SUM(CASE WHEN `Order Item Discount` IS NULL THEN 1 ELSE 0 END) AS order_item_discount_nulls,
    SUM(CASE WHEN `Order Item Discount Rate` IS NULL THEN 1 ELSE 0 END) AS order_item_discount_rate_nulls,
    SUM(CASE WHEN `Order Item Product Price` IS NULL THEN 1 ELSE 0 END) AS order_item_product_price_nulls,
    SUM(CASE WHEN `Order Item Profit Ratio` IS NULL THEN 1 ELSE 0 END) AS order_item_profit_ratio_nulls,
    SUM(CASE WHEN `Order Item Quantity` IS NULL THEN 1 ELSE 0 END) AS order_item_quantity_nulls,
    SUM(CASE WHEN `Sales` IS NULL THEN 1 ELSE 0 END) AS sales_nulls,
    SUM(CASE WHEN `Order Item Total` IS NULL THEN 1 ELSE 0 END) AS order_item_total_nulls,
    SUM(CASE WHEN `Order Profit Per Order` IS NULL THEN 1 ELSE 0 END) AS order_profit_per_order_nulls,
    SUM(CASE WHEN `Order Region` IS NULL THEN 1 ELSE 0 END) AS order_region_nulls,
    SUM(CASE WHEN `Order State` IS NULL THEN 1 ELSE 0 END) AS order_state_nulls,
    SUM(CASE WHEN `Order Status` IS NULL THEN 1 ELSE 0 END) AS order_status_nulls,
    SUM(CASE WHEN `Product Name` IS NULL THEN 1 ELSE 0 END) AS product_name_nulls,
    SUM(CASE WHEN `Product Price` IS NULL THEN 1 ELSE 0 END) AS product_price_nulls,
    SUM(CASE WHEN `Shipping Mode` IS NULL THEN 1 ELSE 0 END) AS shipping_mode_nulls
FROM supply_chain_raw;

select `customer ID` ,count(*)as duplicate_cell 
from supply_chain_raw scr 
group by scr.`Customer Id` 
having count(*)>1;
ALTER TABLE supply_chain_raw
ADD COLUMN row_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

select * from supply_chain_raw scr limit 10;

select count(*),Late_delivery_risk
from supply_chain_raw scr 
group by scr.Late_delivery_risk ;
select `Days for shipping (real)`,row_id
from supply_chain_raw scr 
where `Days for shipping (real)`<0;
select `Days for shipment (scheduled)`,row_id
from supply_chain_raw scr 
where `Days for shipping (real)`<0;

select `Order Item Quantity`,row_id
from supply_chain_raw scr 
where `Order Item Quantity`<=0;
select sales,row_id
from supply_chain_raw scr 
where scr.Sales <0;
select `Product Price`, row_id
from supply_chain_raw scr 
where scr.`Product Price` <=0;
select `Order Item Discount Rate`,row_id
from supply_chain_raw scr 
where `Order Item Discount Rate` <0 or `Order Item Discount Rate` >1;
select `Latitude`,row_id
from supply_chain_raw scr 
where scr.Latitude <-90 or scr.Latitude >90;
select `longitude`,row_id
from supply_chain_raw scr 
where scr.Longitude <-180 or scr.Longitude >180;

select `shipping mode`,count(*),sum(Late_delivery_risk),(sum(Late_delivery_risk)/count(*))*100 as late_delivery_percentage
from supply_chain_raw scr 
group by `shipping mode` ;
SELECT
    SUM(CASE WHEN TRIM(`Type`) = '' THEN 1 ELSE 0 END) AS type_blank,
    SUM(CASE WHEN TRIM(`Delivery Status`) = '' THEN 1 ELSE 0 END) AS delivery_status_blank,
    SUM(CASE WHEN TRIM(`Category Name`) = '' THEN 1 ELSE 0 END) AS category_name_blank,
    SUM(CASE WHEN TRIM(`Customer City`) = '' THEN 1 ELSE 0 END) AS customer_city_blank,
    SUM(CASE WHEN TRIM(`Customer Country`) = '' THEN 1 ELSE 0 END) AS customer_country_blank,
    SUM(CASE WHEN TRIM(`Customer Fname`) = '' THEN 1 ELSE 0 END) AS customer_fname_blank,
    SUM(CASE WHEN TRIM(`Customer Lname`) = '' THEN 1 ELSE 0 END) AS customer_lname_blank,
    SUM(CASE WHEN TRIM(`Customer Segment`) = '' THEN 1 ELSE 0 END) AS customer_segment_blank,
    SUM(CASE WHEN TRIM(`Customer State`) = '' THEN 1 ELSE 0 END) AS customer_state_blank,
    SUM(CASE WHEN TRIM(`Customer Street`) = '' THEN 1 ELSE 0 END) AS customer_street_blank,
    SUM(CASE WHEN TRIM(`Department Name`) = '' THEN 1 ELSE 0 END) AS department_name_blank,
    SUM(CASE WHEN TRIM(`Market`) = '' THEN 1 ELSE 0 END) AS market_blank,
    SUM(CASE WHEN TRIM(`Order City`) = '' THEN 1 ELSE 0 END) AS order_city_blank,
    SUM(CASE WHEN TRIM(`Order Country`) = '' THEN 1 ELSE 0 END) AS order_country_blank,
    SUM(CASE WHEN TRIM(`Order Region`) = '' THEN 1 ELSE 0 END) AS order_region_blank,
    SUM(CASE WHEN TRIM(`Order State`) = '' THEN 1 ELSE 0 END) AS order_state_blank,
    SUM(CASE WHEN TRIM(`Order Status`) = '' THEN 1 ELSE 0 END) AS order_status_blank,
    SUM(CASE WHEN TRIM(`Product Name`) = '' THEN 1 ELSE 0 END) AS product_name_blank,
    SUM(CASE WHEN TRIM(`Shipping Mode`) = '' THEN 1 ELSE 0 END) AS shipping_mode_blank
FROM supply_chain_raw;
CREATE TABLE supply_chain_clean AS
SELECT *
FROM supply_chain_raw;

CREATE VIEW supply_chain_ml AS
SELECT
    `Days for shipment (scheduled)`,
    `Category Name`,
    `Customer Segment`,
    `Market`,
    `Order Country`,
    `Order Region`,
    `Order State`,
    `Order Item Discount`,
    `Order Item Discount Rate`,
    `Order Item Product Price`,
    `Order Item Profit Ratio`,
    `Order Item Quantity`,
    `Sales`,
    `Order Item Total`,
    `Order Profit Per Order`,
    `Product Price`,
    `Shipping Mode`,
    `Late_delivery_risk`
FROM supply_chain_clean;

select * from 
supply_chain_ml scm ;

SELECT *
FROM supply_chain_raw;


