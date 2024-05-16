insert into movie_customer(
	customer_id,
	first_name,
	last_name,
	member_status
) values (
	1,
	'Mark',
	'Mirho',
	true 
);

insert into movie (
	movie_id,
	title,
	director,
	description,
	duration_min
) values (
	1, 
	'Dunesque',
	'Tey Holland',
	'A movie just like the beloved originals of Dune and Dune II',
	120
);

insert into seating (
	seat_id,
	room,
	row_in_room,
	seat_number
) values (
	'011',
	0,
	1,
	1
);

insert into movie_product (
	product_id,
	product_name,
	product_manufacturer,
	product_upc
) values (
	1,
	'Izzy',
	'PepsiCo.',
	'010-123-4567-89'
);

insert into concessions (
	transaction_id,
	customer_id,
	product_id,
	sub_total,
	total_cost
) values (
	1,
	1,
	1,
	2.00,
	2.23
);

insert into ticket (
	ticket_id,
	customer_id,
	seat_id,
	movie_id,
	show_type,
	show_time
) values (
	1,
	1,
	'011',
	1,
	'standard',
	'08:30'
);