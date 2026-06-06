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

##create primary key##
alter table sales_transaction
add primary key (invoice_id);
desc sales_transaction;

alter table product
add primary key (product_id);
desc product;

alter table customer
add primary key (customer_account);
desc customer;

alter table salesman
add primary key (salesman_id);
desc salesman;

select*from sales_transaction;
select*from product;
select*from customer;
select*from salesman;

##Create relational Database##
ALTER TABLE sales_transaction
ADD CONSTRAINT fk_salesman
FOREIGN KEY (salesman_id)
REFERENCES salesman(salesman_id);

ALTER TABLE sales_transaction
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_account)
REFERENCES customer(customer_account);

ALTER TABLE sales_transaction
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id)
REFERENCES product(product_id);

create or replace view master_table as
select
	st.invoice_id,
    st.invoice_date,
    st.invoice_year,
    s.salesman_name,
    st.branch,
    c.region,
    p.item_category,
    p.product,
    p.price,
    st.qty,
    st.booking_fee,
    st.payment_per_month,
    st.monthly_installment,
    st.delivery_fee,
    case
		when st.payment_per_month > 0 then
        (st.monthly_installment * st.payment_per_month) + st.booking_fee + st.delivery_fee
        else
        p.price + st.booking_fee + st.delivery_fee
	end as total
    
    from sales_transaction st
    join customer c on st.customer_account=c.customer_account
    join product p on st.product_id=p.product_id
    join salesman s on st.salesman_id=s.salesman_id;
    
select * from master_table;
desc master_table;