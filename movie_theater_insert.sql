INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info,
	email,
	birth_date
)VALUES(
	1,
	'Jesse',
	'Nauman',
	'1600 Pennsylvania Avenue NW, Washington, DC 20500',
	'0000 0000 0000 0000 111 07/25',
	'jesse@hotmail.com',
	'01/01/2000'
);

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info,
	email,
	birth_date
)VALUES(
	2,
	'Kanye',
	'West',
	'1000 Main St, Calabasas, CA, 55555',
	'2222 2222 2222 2222 111 07/26',
	'yeezus@aol.com',
	'06/08/1977'
);

INSERT INTO movie(
	movie_id,
	title,
	release_date,
	rating
)VALUES(
	1,
	'Saving Private Ryan',
	'07/24/1998',
	'R'
);

INSERT INTO movie(
	movie_id,
	title,
	release_date,
	rating
)VALUES(
	2,
	'Superbad',
	'08/17/2007',
	'R'
);

INSERT INTO ticket(
	ticket_id,
	customer_id,
	movie_id
)VALUES(
	1,
	1,
	1
);

INSERT INTO ticket(
	ticket_id,
	customer_id,
	movie_id
)VALUES(
	2,
	2,
	2
);

INSERT INTO inventory(
	upc,
	stock
)VALUES(
	1,
	50
);

INSERT INTO inventory(
	upc,
	stock
)VALUES(
	2,
	45
);

INSERT INTO concession(
	concession_id,
	upc,
	name_,
	price,
	category,
	ticket_id
)VALUES(
	1,
	2,
	'skittles',
	'5.99',
	'candy',
	2
);

INSERT INTO concession(
	concession_id,
	upc,
	name_,
	price,
	category,
	ticket_id
)VALUES(
	2,
	1,
	'large popcorn',
	'9.99',
	'snack',
	2
);