--Creation of customer_movie Table
create table movie_customer (
	customer_id SERIAL primary key,
	first_name VARCHAR (100),
	last_name VARCHAR (100),
	member_status BOOLEAN
);

--Creation of movie table
create table movie (
	movie_id SERIAL primary key,
	title VARCHAR (100),
	director VARCHAR (100),
	description VARCHAR (250),
	duration_min INTEGER
);

--Creation of seating table
create table seating (
	seat_id VARCHAR (10) primary key,
	room INTEGER,
	row_in_room INTEGER,
	seat_number INTEGER
);

--Creation of product table
create table movie_product (
	product_id SERIAL primary key,
	product_name VARCHAR (100),
	product_manufacturer VARCHAR (100),
	product_upc VARCHAR (15)
);

--creation of concessions table
create table concessions (
	transaction_id SERIAL primary key,
	customer_id INTEGER not null, --must reference customer table
	product_id INTEGER not null, --must reference product table
	sub_total NUMERIC (8,2),
	total_cost NUMERIC (10,2),
	foreign key (customer_id) references movie_customer (customer_id),
	foreign key (product_id) references movie_product (product_id)
);

--creation of tickets table
create table ticket (
	ticket_id SERIAL primary key,
	customer_id INTEGER not null, --must reference customer table
	seat_id VARCHAR (10) not null, --must reference seat table
	movie_id INTEGER not null, --must reference movie table
	show_type VARCHAR (40),
	show_time TIMETZ,
	foreign key (customer_id) references movie_customer (customer_id),
	foreign key (seat_id) references seating (seat_id),
	foreign key (movie_id) references movie (movie_id)
);