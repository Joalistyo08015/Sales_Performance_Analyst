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
