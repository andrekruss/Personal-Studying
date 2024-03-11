CREATE DATABASE gym;

CREATE TABLE memberships(
	id INT IDENTITY(1,1) PRIMARY KEY,
	membership_start DATE,
	membership_end DATE,
	last_checkin DATETIME,
	last_checkout DATETIME,
	consumption NUMERIC(5,2),
	first_name VARCHAR(200),
	last_name VARCHAR(200),
	price NUMERIC(5,2),
	billing_frequency INT,
	gender VARCHAR(200)
);

-- adding some data
INSERT INTO memberships (
    membership_start,
    membership_end,
    last_checkin,
    last_checkout,
    consumption,
    first_name,
    last_name,
    price,
    billing_frequency,
    gender

)
VALUES (
    '2021-10-01',
    NULL,
    '2021-10-01T05:17:36',
    '2021-10-01T06:20:45',
    26.49,
    'Max',
    'Schwarz',
    19.99,
    12,
    'male'
),(
    '2020-05-10',
    '2022-05-09',
    '2021-11-03T10:01:56',
    '2021-11-03T14:30:00',
    100.26,
    'Manu',
    'Lorenz',
    199.99,
    1,
    'male'
),(
    '2021-02-18',
    '2022-02-17',
    '2021-10-29T15:26:05',
    '2021-10-29T17:01:33',
    5.10,
    'Julie',
    'Barnes',
    199.99,
    1,
    'female'
);