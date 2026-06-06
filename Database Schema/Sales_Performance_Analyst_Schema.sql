Table customer {
  customer_account varchar [pk]
  region varchar
  customer_name varchar
}

Table product {
  product_id varchar [pk]
  item_category varchar
  product varchar
  price int
}

Table salesman {
  salesman_id varchar [pk]
  salesman_name varchar
}

Table sales_transaction {
  invoice_id varchar [pk]
  invoice_date date
  invoice_year year
  branch varchar

  salesman_id varchar
  customer_account varchar
  product_id varchar

  qty int
  payment_per_month int
  booking_fee int
  monthly_installment int
  delivery_fee int
}

Ref: sales_transaction.customer_account > customer.customer_account
Ref: sales_transaction.product_id > product.product_id
Ref: sales_transaction.salesman_id > salesman.salesman_id
