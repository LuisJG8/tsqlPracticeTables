CREATE TABLE myTable
(id_number int PRIMARY KEY,
 firstName varchar(50),
 lastName varchar(50),
 position varchar(50),
 date_join_company date,
)
;

INSERT myTable
VALUES   (2, 'Carlos', 'Gutierez', 'businessman', '2000-02-11'),
(3, 'Paco', 'Sanchez', 'worker', '2000-04-20'),
(4, 'Pepe', 'McLion', 'electrician', '2000-09-01')


SELECT * FROM myTable


CREATE TABLE myTablenumber2
(id_number int PRIMARY KEY,
 firstName varchar(50),
 nickname varchar(50),
 state_of_us_live varchar(50),
 date_join_company date,
)
;

INSERT myTablenumber2
VALUES   (4, 'Emma', 'Castillo', 'FL', '2000-01-11')



SELECT firstName
FROM myTable

SELECT myTable.firstName, myTablenumber2.firstName FROM myTable
INNER JOIN myTablenumber2
ON myTable.id_number = myTablenumber2.id_number
WHERE LEN(myTable.firstName) = 4 OR LEN(myTablenumber2.firstName) = 4
;

SELECT m.id_number, m.firstName, ma.id_number, ma.firstName
FROM myTable as m
CROSS APPLY myTablenumber2 ma
WHERE m.id_number = ma.id_number
;

SELECT SUM(ma.id_number), COUNT(ma.id_number), MAX(ma.id_number)
FROM myTable as m
CROSS APPLY myTablenumber2 ma
WHERE m.id_number = ma.id_number

 