USE gregs_list;

DROP TABLE my_contacts2;

CREATE TABLE my_contacts(last_name VARCHAR(30), first_name VARCHAR(20), email VARCHAR(50), 
birthday DATE, profession VARCHAR(50), location VARCHAR(50), status VARCHAR(20), interests VARCHAR(100), 
seeking VARCHAR(100));

CREATE TABLE my_contacts2 (last_name VARCHAR(30) NOT NULL, first_name VARCHAR(20) NOT NULL, email VARCHAR(50) NOT NULL, 
gender CHAR(1) NOT NULL, birthday DATE NOT NULL, profession VARCHAR(50) NOT NULL, 
location VARCHAR(50) NOT NULL, status VARCHAR(20) NOT NULL, interests VARCHAR(100) NOT NULL, 
seeking VARCHAR(100) NOT NULL);

DESC my_contacts;

SELECT * FROM my_contacts;

INSERT INTO my_contacts (last_name, first_name, email) VALUES('Hello','Medved','hellomedved@mail.ru');

INSERT INTO my_contacts
(last_name, first_name, email, birthday, profession, location, status, interests, seeking)
VALUES ('Ivanov', 'Petro', 'petrovich@k.han', '2000-01-20', 'slesar', 'Saint-P', 'Single', 'Marks', 'Girl, new Job');

INSERT INTO my_contacts
(first_name, email, profession, location)
VALUES
('Pat', 'patpost@breakneckpizza.net', 'Postal Worker', 'Princeton, NJ');