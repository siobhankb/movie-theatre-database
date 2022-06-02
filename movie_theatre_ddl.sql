--Create table: movie
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50),
	showing_time TIME,
	showing_date DATE
);

--Create table: customer
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(50),
	birth_date DATE,
	email VARCHAR(50),
	loyalty_member BOOLEAN
);

--Create table: concession
CREATE TABLE concession(
	concession_id SERIAL PRIMARY KEY,
	concession_name VARCHAR(50),
	concession_type VARCHAR(20),
	price NUMERIC(4,2),
	prod_size VARCHAR(3)
);

--Create table: film_category
CREATE TABLE film_category(
	category_id SERIAL PRIMARY KEY,
	category_name VARCHAR(50)
);


--Was going to have a table for MPA ratings with desriptions and minimum ages, 
--decided to just have column in movie table for mpa rating:
ALTER TABLE movie
ADD COLUMN mpa_rating VARCHAR(5);


--Alter movie table to link foreign key, film_category 
ALTER TABLE movie 
ADD COLUMN category_id INTEGER NOT NULL;

ALTER TABLE movie
ADD FOREIGN KEY(category_id) REFERENCES film_category(category_id);


--Create table: ticket
CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	online BOOLEAN,
	customer_id INTEGER
);

--Alter ticket table to include foreign key
ALTER TABLE ticket 
ADD FOREIGN key(customer_id) REFERENCES customer(customer_id);


--Create intermediary table movie_ticket
CREATE TABLE movie_ticket(
	movie_id INTEGER NOT NULL,
	ticket_id INTEGER NOT NULL
);

--Add foreign keys to movie_ticket table
ALTER TABLE movie_ticket 
ADD FOREIGN KEY(movie_id) REFERENCES movie(movie_id);

ALTER TABLE movie_ticket 
ADD FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id);


--Create intermediary table movie_concession
CREATE TABLE movie_concession(
	movie_id INTEGER NOT NULL,
	concession_id INTEGER NOT NULL
);

--Add foreign keys to movie_concession table
ALTER TABLE movie_concession 
ADD FOREIGN KEY(movie_id) REFERENCES movie(movie_id);

ALTER TABLE movie_concession 
ADD FOREIGN KEY(concession_id) REFERENCES concession(concession_id);



--Alter movie_concession table to add column customer_id, link foreign key
ALTER TABLE  movie_concession
ADD COLUMN conc_sale_id INTEGER NOT NULL;

ALTER TABLE movie_concession
ADD FOREIGN KEY(customer_id) REFERENCES film_category(category_id);

--decided to make concession its own entity, like a movie that customers can buy
--means concession table will link to purchase table, movie_concession 
CREATE TABLE concession_sale(
	conc_sale_id SERIAL PRIMARY KEY,
	customer_id INTEGER
);

ALTER TABLE concession_sale
ADD FOREIGN key(customer_id) REFERENCES customer(customer_id);


ALTER TABLE movie_concession 
ADD COLUMN conc_sale_id INTEGER;

ALTER TABLE movie_concession 
ADD FOREIGN KEY(conc_sale_id) REFERENCES concession_sale(conc_sale_id);



