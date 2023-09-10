drop table if exists customer cascade;
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone VARCHAR(15),
	email VARCHAR(50),
	member_since DATE default CURRENT_DATE
);

drop table if exists movie cascade;
create table movie(
	movie_id serial primary key,
	movie_title VARCHAR(100),
	release_date DATE default CURRENT_DATE
);

drop table if exists item cascade;
create table item(
	item_id serial primary key,
	item_name VARCHAR(100),
	price NUMERIC(4,2)
);

drop table if exists ticket cascade;
create table ticket(
	ticket_id SERIAL primary key,
	movie_id INTEGER not null,
	customer_id INTEGER not null,
	ticket_date DATE default CURRENT_DATE,
	foreign key(movie_id) references movie(movie_id),
	foreign key(customer_id) references customer(customer_id)
);

drop table if exists reviews cascade;
create table reviews(
	review_id SERIAL primary key,
	customer_id INTEGER not null,
	movie_id INTEGER not null,
	review text,
	foreign key(customer_id) references customer(customer_id),
	foreign key(movie_id) references movie(movie_id)
);

drop table if exists concession_sales cascade;
create table concession_sales(
	sales_id SERIAL primary key,
	customer_id INTEGER not null,
	order_total NUMERIC(4,2),
	foreign key(customer_id) references customer(customer_id)
);

drop table if exists concession_sales_details cascade;
create table concession_sales_details(
	sales_id INTEGER not null,
	item_id INTEGER not null,
	quantity_sold INTEGER,
	primary key(sales_id, item_id),
	foreign key(sales_id) references concession_sales(sales_id),
	foreign key(item_id) references item(item_id)
);
