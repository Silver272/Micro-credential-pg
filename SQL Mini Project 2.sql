-- Reference Jingyue Gao
-- Create an Insurance database
-- Create Insurance tables
-- Please follow the sample tables to create a table with appropriate columns and data types.
-- Identify primary and foreign keys in each table and establish relationship between them
-- Bonus - ER diagram in power point

CREATE TABLE insurance_product (
insurance_product_id serial PRIMARY KEY,
insurance_company VARCHAR(255) NOT NULL,
price INT,
created_at TIMESTAMP
);


-- Populate Insurance tables with sample data which you created in above step
-- Insert script for each table
-- Populate each table with sample data (provided)
-- Feel free to add more sample data wherever applicable

INSERT INTO insurance_product (insurance_product_id, insurance_company, price, created_at) 
VALUES
(272, 'Allstate', 450, '2018-09-12 11:52:00-01'),
(273, 'GEICO', 380, '2020-01-03 09:18:40-01'),
(274, 'MetLife', 500, '2011-11-16 15:20:00-03'),
(275, 'State Farm', 550, '2019-02-12 12:54:00-06'),
(276, 'Progressive', 700, '2016-06-30 02:44:00-05');

CREATE TABLE purchase_insurance (
purchase_insurance_id serial PRIMARY KEY,
insurance_product_id INT, 
price INT,
quantity INT,
status VARCHAR(255) NOT NULL
);

INSERT INTO purchase_insurance (insurance_product_id, price, quantity, status) 
VALUES
(274, 500, 2, 'pending'),
(274, 500, 1, 'expired'),
(272, 450, 3, 'covered'),
(276, 700, 1, 'covered'),
(273, 380, 2, 'covered'),
(273, 380, 2, 'covered'),
(276, 700, 4, 'covered'),
(275, 550, 1, 'covered'),
(272, 450, 3, 'covered'),
(275, 550, 5, 'covered'),
(274, 500, 1, 'covered'),
(275, 550, 5, 'covered'),
(274, 500, 3, 'covered'),
(272, 450, 5, 'covered'),
(275, 550, 2, 'expired');

CREATE TABLE purchase_insurance_history (
purchase_insurance_id serial PRIMARY KEY,
created_at TIMESTAMP,
name VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
city VARCHAR(25) NOT NULL,	
state VARCHAR(25) NOT NULL,
zipcode INT,
user_id INT
);

INSERT INTO purchase_insurance_history (created_at, name, address, city, state, zipcode, user_id) 
VALUES
( '2009-07-19 01:08:00-04', 'Prince Boateng', '317 Lexington Ave', 'West Babylon', 'NY', 11704, 14),
( '2010-08-10 00:48:00-04', 'Zara Odom', '85 West 168th Street', 'Bronx', 'NY', 10456, 17),
( '2009-03-19 02:49:00-04', 'Sarah Fernandez', '9969 Rockwell St.','Manases', 'VA', 20505, 4),
( '2009-10-09 04:44:00-04', 'Fernanda Mcfarland','245 Atlanta Drive','Atlanta', 'GA', 20168, 13),
( '2009-09-04 20:55:00-04', 'Lindsey Paul', '967 Marble Falls Court','Nashville', 'TN', 46208, 3),
( '2010-09-26 03:00:00-04', 'Maame Kesewa', '9933 Gulf Ave.','Greensboro', 'NC', 50197, 8),
( '2009-02-22 09:46:00-05', 'Akwesi Bawuah', '1050 Crossway Drive', 'Alameda', 'CA', 61664, 2),
( '2010-01-12 11:27:00-05', 'Dayana Suarez', '8155 Bayport St.','Boise', 'IA', 45701, 12),
( '2010-06-11 12:21:00-04', 'Solomon Combs', '382 Summer Avenue','Stanford', 'CT', 50571, 7),
( '2010-08-16 16:09:00-04', 'Thaddeus Finley', '7845 Arnold Street', 'Chicago', 'IL', 76863, 19),
( '2010-06-05 20:27:00-04', 'Lacey Booth', '51 Beacon Rd.', 'NY','NY', 89152, 11),
( '2009-06-06 15:13:00-04', 'Jessie Burke', '243 Rock Maple Rd.','Chicago', 'IL', 62266, 1),
( '2009-08-19 21:34:00-04', 'Serenity Yates', '45 Garden Lane', 'AnnHarbor','MI', 12682, 10),
( '2009-08-20 04:45:00-04', 'Lamont Morrison', '37 East Edgemont Drive', 'Fort Lauderdale','FL', 87597, 9),
( '2009-11-21 00:28:00-05', 'Abby Jackson', '190 Newbridge Drive', 'New City','WI', 25835, 15);

CREATE TABLE users (
user_id serial PRIMARY KEY NOT NULL,
email VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
created_at TIMESTAMP
);

INSERT INTO users (email, password, created_at)
VALUES
( 'P.Boateng@verizon.com', '029761dd44fec0b14825843ad0dfface', '2009-12-20 14:36:00-05' ),
( 'Evelyn.Kese@gmail.com', 'd678656644a3f44023f90e4f1cace1f4', '2010-11-12 15:27:00-05' ),
( 'Derek.Brown@gmail.com', '5ab7bc159c6371c65b41059097ff0efe', '2009-03-07 21:06:00-05' ),
( 'Shari.Boamah@verizon.com', '9d38df22b71c8896137d363e29814e5f', '2010-11-20 04:58:00-05' ),
( 'Abby.Jackson@gmail.com', '7a1c8d1d180d75da38efbd03f388472d', '2009-08-11 17:33:00-04' ),
( 'JessieBurke4@verizon.com', 'e129316bf01b0440247414b715726956', '2010-07-18 05:40:00-04' ),
( 'LBooth@verizon.com', '7c63f3c25ee52041c2b9aec3c21a96b6', '2010-09-02 16:56:00-04' ),
( 'Vivian.Westmoreland@verizon.com', '100945c1684d6926dcafcacd967aedd9', '2009-10-01 06:34:00-04' ),
( 'Lamont.Morrison@gmail.com', '511e3229996147ae68f83bab75b9733e', '2009-04-22 02:30:00-04' ),
( 'ThaddeusFinley@verizon.com', 'aeac2309a2b01e19177564126a6f8393', '2009-07-07 16:01:00-04' ),
( 'Yates.Serenity@verizon.com', '98ac14b2c6b7bef8a55b5654aee5f28b', '2009-05-21 19:18:00-04' ),
( 'SolomonCombs1@verizon.com', '4571853f5ee73e305ac152c765ad2915', '2009-01-13 23:07:00-05' ),
( 'DaySuarez@verizon.com', '7467fa8332bc45a15ad2c7003c963ea2', '2009-02-04 08:49:00-05' ),
( 'AkwesiBawuah12@gmail.com', '82bcc0c4c3fc1a9bbae75dc7b8fabccc', '2009-08-17 13:48:00-04' ),
( 'MaameKesewa01@verizon.com', '66327b7500c1b4a115910260418fd582', '2010-07-07 05:28:00-04' ),
( 'LindPaul@gmail.com', '588169a56191c0f99b08e7a392e03ada', '2010-06-22 10:16:00-04' );


-- Form any 5 SQL to extract information from tables
-- Use
-- Join
-- Where
-- Other conditional operators

-- 1.Find the average purchase amount from each state.

SELECT state, AVG(price * quantity) 
FROM purchase_insurance AS pi
LEFT JOIN purchase_insurance_history AS pih
ON pi.purchase_insurance_id = pih.purchase_insurance_id
WHERE state is not NULL
GROUP BY state;

-- 2.Find out how many insurance has been sold for each insurance company.

SELECT insurance_company, SUM(quantity)
FROM insurance_product AS ip
LEFT JOIN purchase_insurance AS pi
ON ip.insurance_product_id = pi.insurance_product_id
GROUP BY insurance_company;

-- 3.Find all the users' name and emails who made at least one purchase from the state of NY.

SELECT name, email 
FROM users AS u 
JOIN purchase_insurance_history AS pih 
ON u.user_id = pih.user_id 
WHERE state = 'NY';

-- 4.Categorize each purchase.

SELECT purchase_insurance_id, state,
CASE 
  WHEN (state = 'CA' or state = 'OR' or state = 'WA') 
    THEN 'West Coast'
  WHEN (state = 'ME' or state = 'NH' or state = 'VT' or state = 'NY' or state = 'MA' or state = 'RI' or state = 'CT' or state = 'NJ' or state = 'PA' or state = 'DE' or state = 'MD' or state = 'DC') 
    THEN 'Northeastern'
  WHEN (state = 'VA' or state = 'NC' or state = 'TN' or state = 'KY')
    THEN 'Central'
  WHEN (state = 'WI' or state = 'MI' or state = 'IN' or state = 'IL' or state = 'OH')
    THEN 'Western Great Lakes'
  ELSE 'Other'
END 
FROM purchase_insurance_history;

-- 5.Find the most recent purchase made by each user.

SELECT name, MAX(pih.created_at)
FROM purchase_insurance_history AS pih 
JOIN users AS u
ON pih.user_id = u.user_id
GROUP BY name;


