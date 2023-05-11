select * from employee;

-- Q1. Who is senior most employee based on title ??
-- we can see that every employee are assigned with the levels 

select * from employee order by levels desc limit 1;

-- Q2. Which country has the most invoices ?? 

select * from invoice;
select count(*) as invoice_count, billing_country from invoice 
group by billing_country order by invoice_count desc;

-- Q3. What are the top 3 values of total invoices ??

select total from invoice order by total desc limit 3;

-- Q4. return the city that has the highest sum of total invoices ??

select * from invoice;
select billing_city, sum(total) as total from invoice group by billing_city, total order by total desc limit 1;

-- Q5. return the person who has spent most money ?

select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total from customer
join 
invoice on customer.customer_id = invoice.customer_id group by customer.customer_id order by total desc limit 1;


