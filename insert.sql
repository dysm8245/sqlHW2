insert into customer(
	first_name,
	last_name,
	phone, 
	email
)values(
	'Dylan',
	'Smith',
	'123-456-7890',
	'example@example.com'
);
select * from customer;

insert into movie(
	movie_title
)values(
	'Star Wars'
);
select * from movie;

insert into ticket(
	movie_id, 
	customer_id
)values(
	1,
	1
);
select * from ticket;

insert into reviews(
	customer_id,
	movie_id,
	review
)values(
	1,
	1,
	'The movie was good and I enjoyed it.'
);
select * from reviews;

insert into item(
	item_name,
	price
)values(
	'popcorn',
	5.00
);
insert into item(
	item_name,
	price
)values(
	'buncha crunch',
	3.00
);
select * from item;

insert into concession_sales(
	customer_id,
	order_total
)values(
	1,
	8.00
);
select * from concession_sales;

insert into concession_sales_details(
	sales_id,
	item_id,
	quantity_sold
)values(
	1,
	1,
	1
);
insert into concession_sales_details(
	sales_id,
	item_id,
	quantity_sold
)values(
	1,
	2,
	1
);
select * from concession_sales_details;
