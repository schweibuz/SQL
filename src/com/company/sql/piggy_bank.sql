DROP TABLE piggy_bank;

CREATE TABLE  piggy_bank (
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
coin CHAR(1) not null,	#coin CHAR(1) CHECK (coin IN ('P', 'N', 'D', 'Q')	   --->		CHECK doesn't work in MySQL engine
coin_year char(4)
);
#ALTER table piggy_bank add constraint check1 check(coin in ('P', 'N', 'D', 'Q'));

SELECT * FROM piggy_bank;

INSERT INTO piggy_bank (coin, coin_year) VALUES ('Q', '1950'), ('P','1972'), ('N','2005'), ('Q','1999'), ('Q','1981'), ('D','1940'), ('Q','1980'), ('P','2001'), ('D','1926'), ('P','1999');

create view pb_quarters as
select * from piggy_bank
where coin = 'Q';

select * from pb_quarters;
drop view pb_quarters;

create view pb_dimes as
select * from piggy_bank
where coin = 'D' WITH CHECK OPTION;		#In MySQL, you can imitate a CHECK CONSTRAINT using a CHECK OPTION

select * from pb_dimes;
drop view pb_dimes;

#nsert into pb_dimes (coin, coin_year) value ('G', '1999');
#delete from pb_dimes where id = 12;

insert into pb_quarters (coin, coin_year) value ('Q', '1993');
INSERT INTO pb_quarters (coin, coin_year) VALUES ('D', 1942);

DELETE FROM pb_quarters WHERE coin = 'N' OR coin = 'P' OR coin = 'D';

UPDATE pb_quarters SET coin = 'Q' WHERE coin = 'P';

START TRANSACTION;
SELECT * FROM piggy_bank;
UPDATE piggy_bank set coin = 'Q' where coin = 'P';
SELECT * FROM piggy_bank;
ROLLBACK;
SELECT * FROM piggy_bank;

START TRANSACTION;
SELECT * FROM piggy_bank;
UPDATE piggy_bank set coin = 'Q' where coin = 'P';
SELECT * FROM piggy_bank;
COMMIT;
SELECT * FROM piggy_bank;

START TRANSACTION;
UPDATE piggy_bank set coin = 'Q' where coin = 'P' AND coin_year < 1970; 
COMMIT;

START TRANSACTION; 
UPDATE piggy_bank set coin = 'N' where coin = 'Q';
ROLLBACK;

START TRANSACTION; 
UPDATE piggy_bank set coin = 'Q' where coin = 'N'
AND coin_year > 1950; 
ROLLBACK;

drop table  piggy_bank;

SET PASSWORD FOR 'root'@'localhost' = PASSWORD('b4dcl0wnZ');
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('100gramm');

CREATE USER elsie IDENTIFIED BY '150gramm';

DROP USER elsie;
GRANT SELECT ON piggy_bank TO elsie;		#User is granted permission to SELECT
GRANT SELECT ON my_contacts TO elsie;

GRANT SELECT ON gregs_list.* TO elsie;		#This allows to set the SELECT privilege for elsie all at once for every table in database

#GRANT ALL ON chores TO bashful, doc, dopey, grumpy, happy, sleepy, sneezy;

GRANT SELECT (first_name, last_name, phone, email) on my_contacts to elsie;
GRANT SELECT ON job_current to elsie;

REVOKE SELECT ON job_current FROM elsie;

GRANT SELECT, INSERT ON status TO elsie WITH GRANT OPTION;	#gives privilege which allow gave privilege to other users

REVOKE SELECT, INSERT ON status FROM elsie;

REVOKE GRANT OPTION on status from elsie;


revoke update, insert, delete on locations from elsie;
revoke update, insert, delete on clown_onfo from elsie;
revoke insert on activities from elsie;
revoke delete on info_lcoation from elsie; #cascade;
revoke insert(location), delete on locations from elsie;

SHOW GRANTS FOR elsie;

grant select, insert on gregs_list.* to elsie;		#MySQL has no ROLES

CREATE user 'hoooy'@'localhost' IDENTIFIED BY '100hooy';

grant select on my_contacts to hoooy;

GRANT SELECT ON clown_info TO elsie IDENTIFIED BY '1234qwerty'; 		#We can create user and granted permission with him





