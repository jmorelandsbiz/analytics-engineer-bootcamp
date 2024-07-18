use database dl_northwind;

-- -----------------------------------------------------
-- Table northwind.customers
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.customer
(
id	NUMBER,
company	TEXT,
last_name	TEXT,
first_name	TEXT,
email_address	TEXT,
job_title	TEXT,
business_phone	TEXT,
home_phone	TEXT,
mobile_phone	TEXT,
fax_number	TEXT,
address	TEXT,
city	TEXT,
state_province	TEXT,
zip_postal_code	TEXT,
country_region	TEXT,
web_page	TEXT,
notes	TEXT,
attachments	TEXT
)
;
-- -----------------------------------------------------
-- Table northwind.employees
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.employees
(
id	NUMBER,
company	TEXT,
last_name	TEXT,
first_name	TEXT,
email_address	TEXT,
job_title	TEXT,
business_phone	TEXT,
home_phone	TEXT,
mobile_phone	TEXT,
fax_number	TEXT,
address	TEXT,
city	TEXT,
state_province	TEXT,
zip_postal_code	TEXT,
country_region	TEXT,
web_page	TEXT,
notes	TEXT,
attachments	TEXT
)
;
-- -----------------------------------------------------
-- Table northwind.privileges
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.privileges
(
id	NUMBER,
privilege_name	TEXT
)
;
-- -----------------------------------------------------
-- Table northwind.employee_privileges
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.employee_privileges
(
employee_id	NUMBER,
privilege_id	NUMBER
)
;
-- -----------------------------------------------------
-- Table northwind.inventory_transaction_types
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.inventory_transaction_types
(
id	NUMBER,
type_name	TEXT
)
;
-- -----------------------------------------------------
-- Table northwind.shippers
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.shippers
(
id	NUMBER,
company	TEXT,
last_name	TEXT,
first_name	TEXT,
email_address	TEXT,
job_title	TEXT,
business_phone	TEXT,
home_phone	TEXT,
mobile_phone	TEXT,
fax_number	TEXT,
address	TEXT,
city	TEXT,
state_province	TEXT,
zip_postal_code	TEXT,
country_region	TEXT,
web_page	TEXT,
notes	TEXT,
attachments	TEXT
)
;
-- -----------------------------------------------------
-- Table northwind.orders_tax_status
-- -----------------------------------------------------

CREATE OR REPLACE TABLE northwind.orders_tax_status
(
id	NUMBER,
tax_status_name	TEXT
)
;

-- -----------------------------------------------------
-- Table northwind.orders_status
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.orders_status
(
id	NUMBER,
status_name	TEXT
)
;
-- -----------------------------------------------------
-- Table northwind.orders
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.orders
(
id	NUMBER,
employee_id	NUMBER,
customer_id	NUMBER,
order_date	DATETIME,
shipped_date	DATETIME,
shipper_id	NUMBER,
ship_name	TEXT,
ship_address	TEXT,
ship_city	TEXT,
ship_state_province	TEXT,
ship_zip_postal_code	TEXT,
ship_country_region	TEXT,
shipping_fee	NUMBER,
taxes	NUMBER,
payment_type	TEXT,
paid_date	DATETIME,
notes	TEXT,
tax_rate	NUMBER,
tax_status_id	NUMBER,
status_id	NUMBER
)
;
-- -----------------------------------------------------
-- Table northwind.products
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.products
(
supplier_ids	TEXT,
id	NUMBER,
product_code	TEXT,
product_name	TEXT,
description	TEXT,
standard_cost	NUMBER,
list_price	NUMBER,
reorder_level	NUMBER,
target_level	NUMBER,
quantity_per_unit	TEXT,
discontinued	NUMBER,
minimum_reorder_quantity	NUMBER,
category	TEXT,
attachments	TEXT
)
;
-- -----------------------------------------------------
-- Table northwind.purchase_order_status
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.purchase_order_status
(
id	NUMBER,
status	TEXT
)
;

-- -----------------------------------------------------
-- Table northwind.suppliers
-- -----------------------------------------------------

CREATE OR REPLACE TABLE northwind.suppliers
(
id	NUMBER,
company	TEXT,
last_name	TEXT,
first_name	TEXT,
email_address	TEXT,
job_title	TEXT,
business_phone	TEXT,
home_phone	TEXT,
mobile_phone	TEXT,
fax_number	TEXT,
address	TEXT,
city	TEXT,
state_province	TEXT,
zip_postal_code	TEXT,
country_region	TEXT,
web_page	TEXT,
notes	TEXT,
attachments	TEXT
)
;
-- -----------------------------------------------------
-- Table northwind.purchase_orders
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.purchase_orders
(
id	NUMBER,
supplier_id	NUMBER,
created_by	NUMBER,
submitted_date	DATETIME,
creation_date	DATETIME,
status_id	NUMBER,
expected_date	DATETIME,
shipping_fee	NUMBER,
taxes	NUMBER,
payment_date	DATETIME,
payment_amount	NUMBER,
payment_method	TEXT,
notes	TEXT,
approved_by	NUMBER,
approved_date	DATETIME,
submitted_by	NUMBER
)
;
-- -----------------------------------------------------
-- Table northwind.inventory_transactions
-- -----------------------------------------------------

CREATE OR REPLACE TABLE northwind.inventory_transactions
(
id	NUMBER,
transaction_type	NUMBER,
transaction_created_date	DATETIME,
transaction_modified_date	DATETIME,
product_id	NUMBER,
quantity	NUMBER,
purchase_order_id	NUMBER,
customer_order_id	NUMBER,
comments	TEXT
)
;

-- -----------------------------------------------------
-- Table northwind.invoices
-- -----------------------------------------------------

CREATE OR REPLACE TABLE northwind.invoices
(
id	NUMBER,
order_id	NUMBER,
invoice_date	DATETIME,
due_date	DATETIME,
tax	NUMBER,
shipping	NUMBER,
amount_due	NUMBER
)
;
-- -----------------------------------------------------
-- Table northwind.order_details_status
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.order_details_status
(
id	NUMBER,
status	TEXT
)
;
-- -----------------------------------------------------
-- Table northwind.order_details
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.order_details
(
id	NUMBER,
order_id	NUMBER,
product_id	NUMBER,
quantity	NUMBER,
unit_price	NUMBER,
discount	NUMBER,
status_id	NUMBER,
date_allocated	DATETIME,
purchase_order_id	NUMBER,
inventory_id	NUMBER
)
;
-- -----------------------------------------------------
-- Table northwind.purchase_order_details
-- -----------------------------------------------------

CREATE OR REPLACE TABLE northwind.purchase_order_details
(
id	NUMBER,
purchase_order_id	NUMBER,
product_id	NUMBER,
quantity	NUMBER,
unit_cost	NUMBER,
date_received	DATETIME,
posted_to_inventory	NUMBER,
inventory_id	NUMBER
)
;


-- -----------------------------------------------------
-- Table northwind.sales_reports
-- -----------------------------------------------------
CREATE OR REPLACE TABLE northwind.sales_reports (
  group_by TEXT,
  display TEXT,
  title TEXT,
  filter_row_source TEXT,
  "default" TEXT
)
;



CREATE OR REPLACE TABLE northwind.strings
(
string_id NUMBER,
string_data TEXT
)
;


/*
dl_northwind = raw data above script 
stg_northwind = select * from dl 
dwh_northwind = dim and fact star schema 
dm_northwind = one big table 

*/