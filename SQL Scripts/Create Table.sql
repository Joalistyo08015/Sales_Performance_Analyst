create database sales_analyst;
use sales_analyst;

create table sales_transaction (
	invoice_id varchar(20) not null,
    invoice_date date not null,
    invoice_year year not null,
    branch varchar(30) not null,
    salesman_id varchar(10) not null,
    customer_account varchar(10) not null,
    product_id varchar(25) not null,
    qty int  not null,
    payment_per_month TINYINT not null,
    booking_fee int not null,
    monthly_installment int not null,
    delivery_fee int not null
);
SHOW CREATE TABLE sales_transaction;
create table product(
	product_id varchar (25) not null,
    item_category varchar (5) not null,
    product varchar (15) not null,
    price int not null
);

create table customer(
	customer_account varchar (10) not null,
    region varchar (25) not null,
    customer_name varchar (50) not null
);

create table salesman(
	salesman_id varchar (10) not null,
    salesman_name varchar (25) not null
);
