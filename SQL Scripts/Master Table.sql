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
