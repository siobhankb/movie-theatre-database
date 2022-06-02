--Populate customer table:
INSERT INTO customer(
	customer_name,
	birth_date,
	email,
	loyalty_member
) VALUES (
	'Cary Elwes',
	'1962-10-26',
	'asyouwish@ROUS.com',
	TRUE
),(
	'Robin Wright',
	'1966-04-08',
	'buttercup@princessbride.com',
	TRUE
),(
	'Mandy Patinkin',
	'1952-11-30',
	'inigom@youkillmyfather.com',
	TRUE
),(
	'Chris Sarandon',
	'1942-07-24',
	'humperdink@sixfingers.com',
	FALSE
);

--Populate film_category table:
INSERT INTO film_category(
	category_name
) VALUES (
	'fantasy'
),(
	'comedy'
),(
	'action'
),(
	'drama'
),(
	'documentary'
),(
	'animated'
),( 
	'romance'
),(
	'adventure'
);


--Populate movie table:
INSERT INTO movie(
	movie_name,
	mpa_rating,
	category_id,
	showing_time,
	showing_date 
) VALUES (
	'Princess Bride',
	'PG',
	24,
	'15:35',
	'1993-11-25'
),(
	'Wonder Woman',
	'PG-13',
	3,
	'17:55',
	'2017-12-01'
),(
	'Nightmare Before Christmas',
	'PG-13',
	1,
	'18:15',
	'1998-10-30'
),(
	'Wonder',
	'PG',
	4,
	'13:05',
	'2017-07-02'
),(
	'Princess Bride',
	'PG',
	24,
	'16:30',
	'1987-12-25'
);


--Populate concession table:
INSERT INTO concession(
	concession_name,
	concession_type,
	price,
	prod_size
) VALUES (
	'popcorn',
	'food-bulk',
	'3.99',
	'S'
),(
	'popcorn',
	'food-bulk',
	'5.99',
	'M'
),(
	'popcorn',
	'food-bulk',
	'7.99',
	'L'
),(
	'popcorn',
	'food-bulk',
	'9.99',
	'XL'
),(
	'pretzel',
	'food-order',
	'4.99',
	'one'
),(
	'hotdog',
	'food-order',
	'3.99',
	'R'
),(
	'hotdog',
	'food-order',
	'4.99',
	'FL'
),(
	'soda',
	'drink-bulk',
	'2.99',
	'S'
),(
	'soda',
	'drink-bulk',
	'4.99',
	'M'
),(
	'soda',
	'drink-bulk',
	'5.99',
	'L'
),(
	'soda',
	'drink-bulk',
	'6.99',
	'XL'
),(
	'candy',
	'box',
	'3.99',
	'box'
);

--Populate ticket table
INSERT INTO ticket(
	online,
	customer_id
) VALUES (
	TRUE,
	1
),(
	FALSE,
	2
),(
	TRUE,
	1
),(
	TRUE,
	1
),(
	FALSE,
	3
),(
	FALSE,
	4
);

--Populate movie_ticket table
INSERT INTO movie_ticket(
	movie_id,
	ticket_id
) VALUES (
	1,
	1
),(
	1,
	2
),(
	1,
	3
),(
	1,
	4
),(
	2,
	2
),(
	4,
	4
);

--Populate concession_sale table
INSERT INTO concession_sale(
	customer_id
) VALUES (
	'1'
),(
	'2'
),(
	'3'
),(
	'1'
),(
	'1'
),(
	'1'
),(
	'4'
),(
	'3'
),(
	'2'
);


--Populate concession_sale table
INSERT INTO concession_sale(
	customer_id
) VALUES (
	1
),(	
	2
),(
	3
),(
	1
),(
	1
),(	
	1
),(
	1
),(
	4
),(
	1
);


--Populate movie_concession table
INSERT INTO movie_concession(
	movie_id,
	conc_sale_id,
	concession_id
) VALUES (
	1,
	1,
	3
),(	
	1,
	2,
	2
),(
	1,
	3,
	5
),(
	2,
	4,
	3
),(
	3,
	5,
	2
),(
	1,
	6,
	5
),(
	4,
	7,
	4
),(
	2,
	8,
	3
),(
	2,
	9,
	4
);


