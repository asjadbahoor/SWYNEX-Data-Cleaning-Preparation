CREATE DATABASE IF NOT EXISTS data_cleaning_demo;
USE data_cleaning_demo;

CREATE TABLE IF NOT EXISTS messy_customer_orders (
    customer_id VARCHAR(50),
    order_id VARCHAR(100),
    customer_name VARCHAR(150),
    email VARCHAR(255),
    phone VARCHAR(50),
    order_date VARCHAR(50),
    ship_date VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(50),
    product VARCHAR(100),
    quantity VARCHAR(50),
    unit_price VARCHAR(50),
    discount_pct VARCHAR(50),
    total_amount VARCHAR(50),
    payment_method VARCHAR(100),
    order_status VARCHAR(100),
    is_returning_customer VARCHAR(50),
    customer_rating VARCHAR(50),
    delivery_days VARCHAR(50),
    sales_channel VARCHAR(100),
    notes TEXT
);
