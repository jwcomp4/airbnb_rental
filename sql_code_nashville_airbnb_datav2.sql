
-- Select the September measures and change the name of the columns
CREATE TABLE listingsep (
	id varchar,
	name varchar (255),
	host_id varchar (255),
	host_name varchar (255),
	neighbourhood_group varchar(255),
	neighbourhood varchar(255),
	latitude decimal,
	longitude decimal,
	room_type varchar(255), 
	price int,
	minimum_nights int,
	number_of_reviews int,
	last_review date,
	reviews_per_month float,
	calculated_host_listings_count int,
	availability_365 int,
	number_of_reviews_ltm int,
	license varchar(255),
	PRIMARY KEY (id)
);

-- Create a table for the measurements that change every quarter

CREATE TABLE september_measures AS
	SELECT
	id,
	price,
	minimum_nights,
	number_of_reviews,
	last_review,
	reviews_per_month,
	calculated_host_listings_count,
	availability_365,
	number_of_reviews_ltm
	FROM listingsep;
	
-- Change the names the above table

ALTER TABLE september_measures
	RENAME COLUMN price to sep_price;
ALTER TABLE september_measures	
	RENAME COLUMN minimum_nights to sep_minimum_nights;
ALTER TABLE september_measures
	RENAME COLUMN last_review to sep_last_review;
ALTER TABLE september_measures
	RENAME COLUMN reviews_per_month to sep_reviews_per_month;
ALTER TABLE september_measures
	RENAME COLUMN calculated_host_listings_count to sep_calculated_host_listings_count;
ALTER TABLE september_measures
	RENAME COLUMN availability_365 to sep_availability_365;
ALTER TABLE september_measures
	RENAME COLUMN number_of_reviews to sep_number_of_reviews;
ALTER TABLE september_measures
	RENAME COLUMN number_of_reviews_ltm to sep_number_of_reviews_ltm;
ALTER TABLE september_measures
	RENAME COLUMN id to sep_id;


SELECT * FROM september_measures

-- Select the June measures and change the name of the columns

CREATE TABLE listingjun (
	id varchar,
	name varchar (255),
	host_id varchar (255),
	host_name varchar (255),
	neighbourhood_group varchar(255),
	neighbourhood varchar(255),
	latitude decimal,
	longitude decimal,
	room_type varchar(255), 
	price int,
	minimum_nights int,
	number_of_reviews int,
	last_review date,
	reviews_per_month float,
	calculated_host_listings_count int,
	availability_365 int,
	number_of_reviews_ltm int,
	license varchar(255),
	PRIMARY KEY (id)
);

-- Create a table for the measurements that change every quarter

CREATE TABLE june_measures AS
	SELECT
	id,
	price,
	minimum_nights,
	number_of_reviews,
	last_review,
	reviews_per_month,
	calculated_host_listings_count,
	availability_365,
	number_of_reviews_ltm
	FROM listingjun;
	
-- Change the names the above table

ALTER TABLE june_measures
	RENAME COLUMN price to jun_price;
ALTER TABLE june_measures	
	RENAME COLUMN minimum_nights to jun_minimum_nights;
ALTER TABLE june_measures
	RENAME COLUMN last_review to jun_last_review;
ALTER TABLE june_measures
	RENAME COLUMN reviews_per_month to jun_reviews_per_month;
ALTER TABLE june_measures
	RENAME COLUMN calculated_host_listings_count to jun_calculated_host_listings_count;
ALTER TABLE june_measures
	RENAME COLUMN availability_365 to jun_availability_365;
ALTER TABLE june_measures
	RENAME COLUMN number_of_reviews to jun_number_of_reviews;
ALTER TABLE june_measures
	RENAME COLUMN number_of_reviews_ltm to jun_number_of_reviews_ltm;
ALTER TABLE june_measures
	RENAME COLUMN id to jun_id;


SELECT * FROM june_measures

-- Select the March measures and change the name of the columns

CREATE TABLE listingmar (
	id varchar,
	name varchar (255),
	host_id varchar (255),
	host_name varchar (255),
	neighbourhood_group varchar(255),
	neighbourhood varchar(255),
	latitude decimal,
	longitude decimal,
	room_type varchar(255), 
	price int,
	minimum_nights int,
	number_of_reviews int,
	last_review date,
	reviews_per_month float,
	calculated_host_listings_count int,
	availability_365 int,
	number_of_reviews_ltm int,
	license varchar(255),
	PRIMARY KEY (id)
);

-- Create a table for the measurements that change every quarter

CREATE TABLE march_measures AS
	SELECT
	id,
	price,
	minimum_nights,
	number_of_reviews,
	last_review,
	reviews_per_month,
	calculated_host_listings_count,
	availability_365,
	number_of_reviews_ltm
	FROM listingmar;
	
-- Change the names the above table

ALTER TABLE march_measures
	RENAME COLUMN price to mar_price;
ALTER TABLE march_measures	
	RENAME COLUMN minimum_nights to mar_minimum_nights;
ALTER TABLE march_measures
	RENAME COLUMN last_review to mar_last_review;
ALTER TABLE march_measures
	RENAME COLUMN reviews_per_month to mar_reviews_per_month;
ALTER TABLE march_measures
	RENAME COLUMN calculated_host_listings_count to mar_calculated_host_listings_count;
ALTER TABLE march_measures
	RENAME COLUMN availability_365 to mar_availability_365;
ALTER TABLE march_measures
	RENAME COLUMN number_of_reviews to mar_number_of_reviews;
ALTER TABLE march_measures
	RENAME COLUMN number_of_reviews_ltm to mar_number_of_reviews_ltm;
ALTER TABLE march_measures
	RENAME COLUMN id to mar_id;


SELECT * FROM march_measures


-- Select the December measures and change the name of the columns

CREATE TABLE listingdec (
	id varchar,
	name varchar (255),
	host_id varchar (255),
	host_name varchar (255),
	neighbourhood_group varchar(255),
	neighbourhood varchar(255),
	latitude decimal,
	longitude decimal,
	room_type varchar(255), 
	price int,
	minimum_nights int,
	number_of_reviews int,
	last_review date,
	reviews_per_month float,
	calculated_host_listings_count int,
	availability_365 int,
	number_of_reviews_ltm int,
	license varchar(255),
	PRIMARY KEY (id)
);

-- Create a table for the measurements that change every quarter

CREATE TABLE december_measures AS
	SELECT
	id,
	price,
	minimum_nights,
	number_of_reviews,
	last_review,
	reviews_per_month,
	calculated_host_listings_count,
	availability_365,
	number_of_reviews_ltm
	FROM listingdec;
	
-- Change the names the above table

ALTER TABLE december_measures
	RENAME COLUMN price to dec_price;
ALTER TABLE december_measures	
	RENAME COLUMN minimum_nights to dec_minimum_nights;
ALTER TABLE december_measures
	RENAME COLUMN last_review to dec_last_review;
ALTER TABLE december_measures
	RENAME COLUMN reviews_per_month to dec_reviews_per_month;
ALTER TABLE december_measures
	RENAME COLUMN calculated_host_listings_count to dec_calculated_host_listings_count;
ALTER TABLE december_measures
	RENAME COLUMN availability_365 to dec_availability_365;
ALTER TABLE december_measures
	RENAME COLUMN number_of_reviews to dec_number_of_reviews;
ALTER TABLE december_measures
	RENAME COLUMN number_of_reviews_ltm to dec_number_of_reviews_ltm;
ALTER TABLE december_measures
	RENAME COLUMN id to dec_id;


SELECT * FROM december_measures
-- Inner Join of new measurement tables


CREATE TABLE dimensions as
	select
	id,
		name,
		host_id,
		host_name,
		neighbourhood_group,
		neighbourhood,
		latitude,
		longitude,
		room_type,
		license
	from listingsep;

SELECT * FROM dimensions

DROP TABLE combined_measures

SELECT id,
		name,
		host_id,
		host_name,
		neighbourhood_group,
		neighbourhood,
		latitude,
		longitude,
		room_type,
		license,
		sep_price,
		jun_price,
		mar_price,
		dec_price,
		sep_minimum_nights,
		jun_minimum_nights,
		mar_minimum_nights,
		dec_minimum_nights,
		sep_number_of_reviews,
		jun_number_of_reviews,
		mar_number_of_reviews,
		dec_number_of_reviews,
		sep_last_review,
		jun_last_review,
		mar_last_review,
		dec_last_review,
		sep_reviews_per_month,
		jun_reviews_per_month,
		mar_reviews_per_month,
		dec_reviews_per_month,
		sep_calculated_host_listings_count,
		jun_calculated_host_listings_count,
		mar_calculated_host_listings_count,
		dec_calculated_host_listings_count,
		sep_availability_365,
		jun_availability_365,
		mar_availability_365,
		dec_availability_365,
		sep_number_of_reviews_ltm,
		jun_number_of_reviews_ltm,
		mar_number_of_reviews_ltm,
		dec_number_of_reviews_ltm
	INTO combined_measures
FROM dimensions
INNER JOIN september_measures
on september_measures.sep_id = dimensions.id
INNER JOIN june_measures
on june_measures.jun_id = dimensions.id
INNER JOIN march_measures
on march_measures.mar_id = dimensions.id
INNER JOIN december_measures
on december_measures.dec_id = dimensions.id

select * from combined_measures;