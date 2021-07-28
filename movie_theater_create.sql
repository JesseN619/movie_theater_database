CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150),
	email VARCHAR(100),
	birth_date DATE
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	release_date DATE,
	rating VARCHAR(10)
);

CREATE TABLE inventory(
	upc SERIAL PRIMARY KEY,
	stock INTEGER
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	purchase_date DATE DEFAULT CURRENT_DATE,
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE concession(
	concession_id SERIAL PRIMARY KEY,
	upc INTEGER NOT NULL,
	name_ VARCHAR(50),
	price NUMERIC(5,2),
	category VARCHAR(20),
	ticket_id INTEGER,
	FOREIGN KEY(upc) REFERENCES inventory(upc),
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);