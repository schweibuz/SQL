CREATE TABLE `my_contacts2` (`last_name` varchar(30) ,`first_name` varchar(20) ,`email` varchar(50) ,
  `gender` char(1),`birthday` date ,`profession` varchar(50),`location` varchar(50),`status` varchar(20),
  `interests` varchar(100),`seeking` varchar(100)) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- drop table my_contacts2;
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Anderson','Jillian','jill_anderson@ \nbreakneckpizza.com','F','1980-09-05','Technical Writer','Palo Alto, CA','single','kayaking, reptiles','relationship, friends');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Kenton','Leo','lkenton@starbuzzcoffee.com','M','1974-01-10','Manager','San Francisco, CA','divorced','women','women to date');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('McGavin','Darrin',' captainlove@headfirsttheater.com','M','1966-01-23','Cruise Ship Captain','San Diego, CA','single','sailing, fishing, yachting','women for casual relationships');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Franklin','Joe','joe_franklin@leapinlimos.com','M','1977-04-28','Software Sales','Dallas, TX','married','fishing, drinking','new job');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Hamilton','Jamie','dontbother@starbuzzcoffee.com','F','1964-09-10','System Administrator','Princeton, NJ','married','RPG','nothing');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Chevrolet','Maurice','bookman4u@objectville.net','M','1962-07-01','Bookshop Owner','Mountain View, CA','married','collecting books, scuba diving','friends');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Kroger','Renee','poorrenee@mightygumball.net','F','1976-12-03','Unemployed','San Francisco, CA','divorced','cooking','employment');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Mendoza','Angelina','angelina@starbuzzcoffee.com','F','1979-08-19','UNIX Sysadmin','San Francisco, CA','married','acting, dancing','new job');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Murphy','Donald','padraic@tikibeanlounge.com','M','1967-01-23','Computer Programmer','New York City, NY','committed relationsh','RPG, anime','friends');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Spatner','John','jpoet@objectville.net','M','1963-04-18','Salesman','Woodstock, NY','married','poetry, screenwriting','nothing');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Toth','Anne','Anne_Toth@leapinlimos.com','F','1969-11-18', 'Artist','San Fran, CA');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Manson','Anne','am86@objectville.net','F','1977-08-09', 'Baker','Seattle, WA');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Hardy','Anne','anneh@b0tt0msup.com','F','1963-04-18', 'Teacher','San Fran, CA');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Parker','Anne','annep@starbuzzcoffee.com','F','1983-01-10', 'Student','San Fran, CA');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Blunt','Anne','anneblunt@breakneckpizza.com','F','1959-10-09', 'Web Designer','San Fran, CA');
INSERT INTO `my_contacts2` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Jacobs','Anne','anne99@objectville.net','F','1968-02-05', 'Computer Programmer','San Jose, CA');

USE gregs_list;
SELECT * FROM my_contacts2 WHERE first_name = 'Anne';

INSERT INTO my_contacts2 VALUES ('Funyon', 'Steve', 'steve@ onionflavoredrings.com', 'M','1970-04-01', 'Punk', 'Grover\'s Mill, NJ', 'Single', 'smashing the state', 'compatriots, guitar players');

select * from my_contacts2;

SELECT * FROM my_contacts2 WHERE location = 'Grover\'s Mill, NJ';

select last_name, first_name, email, gender from my_contacts2 where profession = 'computer programmer';

select last_name, first_name, location, birthday from my_contacts2 where birthday > '1975-10-09';

select last_name, first_name, email, birthday from my_contacts2 where location = 'san francisco, ca' and birthday > '1977.01.01';

select * from my_contacts2 where first_name = 'Anne' AND location = 'san fran, ca';

select * from my_contacts2 where location like '%CA';

show create table my_contacts2;

ALTER TABLE my_contacts2 add column contact_id int not null auto_increment first, add primary key(contact_id);

alter table my_contacts2 add column telephone varchar(10) default '+7(9..)';

alter table my_contacts2 drop telephone;

CREATE TABLE my_contacts (contact_id INT NOT NULL AUTO_INCREMENT, last_name varchar(30) default NULL,
first_name varchar(20) default NULL, email varchar(50) default NULL, gender char(1) default NULL,
dirthday date default NULL, profession varchar(50) default NULL, location varchar(50) default NULL,
status varchar(20) default NULL, interests varchar(100) default NULL, seeking varchar(100) default NULL,
PRIMARY KEY(contact_id));

select * from my_contacts;