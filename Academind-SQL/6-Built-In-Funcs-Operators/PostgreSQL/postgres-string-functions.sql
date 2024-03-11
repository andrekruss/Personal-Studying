-- CONCAT()
-- used for concatenating strings
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM memberships;

-- in postgres, we can also concatenate using ||
SELECT (first_name || ' ' || last_name) AS full_name
FROM memberships;

-- using concate along a number value
SELECT CONCAT('$ ', price)
FROM memberships;

-- adding more data, using LOWER() function
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
    '2021-10-18',
    '2021-11-18',
    '2021-11-01 08:56:01',
    '2021-11-01 09:20:12',
    NULL,
    'John',
    'Doe',
    19.99,
    12,
    LOWER('DivErs') 
);

-- using LENGTH() function
SELECT * FROM memberships
WHERE LENGTH(last_name) < 4;

-- adding more data and USING 
-- TRIM()
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
    '2021-05-02',
    NULL,
    '2021-06-05 11:52:25',
    '2021-06-05 11:58:08',
    NULL,
    'Monti',
    'Durns',
    199.99,
    1,
    TRIM(TRAILING ' ' FROM 'male   ')
);

SELECT LENGTH(gender) 
FROM memberships;