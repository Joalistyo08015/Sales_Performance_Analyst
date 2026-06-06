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
