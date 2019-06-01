create database gregs_list;

use gregs_list;

CREATE TABLE `my_contactsTEST` (
  `last_name` varchar(30) ,
  `first_name` varchar(20) ,
  `email` varchar(50) ,
  `gender` char(1),
  `birthday` date ,
  `profession` varchar(50),
  `location` varchar(50),
  `status` varchar(20),
  `interests` varchar(100),
  `seeking` varchar(100)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

drop table my_contactsTEST;
use gregs_list;
show create table my_contacts;
select * from my_contactsTEST;

INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Anderson','Jillian','jill_anderson@ \nbreakneckpizza.com','F','1980-09-05','Technical Writer','Palo Alto, CA','single','kayaking, reptiles','relationship, friends');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Kenton','Leo','lkenton@starbuzzcoffee.com','M','1974-01-10','Manager','San Francisco, CA','divorced','women','women to date');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('McGavin','Darrin',' captainlove@headfirsttheater.com','M','1966-01-23','Cruise Ship Captain','San Diego, CA','single','sailing, fishing, yachting','women for casual relationships');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Franklin','Joe','joe_franklin@leapinlimos.com','M','1977-04-28','Software Sales','Dallas, TX','married','fishing, drinking','new job');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Hamilton','Jamie','dontbother@starbuzzcoffee.com','F','1964-09-10','System Administrator','Princeton, NJ','married','RPG','nothing');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Chevrolet','Maurice','bookman4u@objectville.net','M','1962-07-01','Bookshop Owner','Mountain View, CA','married','collecting books, scuba diving','friends');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Kroger','Renee','poorrenee@mightygumball.net','F','1976-12-03','Unemployed','San Francisco, CA','divorced','cooking','employment');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Mendoza','Angelina','angelina@starbuzzcoffee.com','F','1979-08-19','UNIX Sysadmin','San Francisco, CA','married','acting, dancing','new job');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Murphy','Donald','padraic@tikibeanlounge.com','M','1967-01-23','Computer Programmer','New York City, NY','committed relationsh','RPG, anime','friends');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Spatner','John','jpoet@objectville.net','M','1963-04-18','Salesman','Woodstock, NY','married','poetry, screenwriting','nothing');

alter table my_contactsTEST add column city varchar(20) not null, add column state varchar(10) not null, add column id int (10) not null primary key auto_increment;

INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`city`,`state`,`status`,`interests`,`seeking`) 
VALUES ('Moore','Nigel','nigelmoore@ranchersrule.com','M','1975-08-28', 'Rancher','Austin', 'TX', 'single', 'animals, horseback riding, movies', 'single F');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`city`, `state`,`status`,`interests`,`seeking`) 
VALUES ('Fiore', 'Carla', 'cfiore@fioreanimaclinic.com', 'F', '1974-01-07', 'Veterinarian', 'Round Rock', 'TX', 'single', 'animals, horseback riding, movies, mystery novels, hiking', 'single M');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`city`, `state`,`status`,`interests`,`seeking`) 
VALUES ('Sullivan', 'Regis', 'me@kathieleeisaflake.com', 'M', '1955-03-20', 'Comedian', 'Cambridge', 'MA', 'single', 'animals, trading cards, geocaching', 'single F');
INSERT INTO `my_contactsTEST` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`city`, `state`,`status`,`interests`,`seeking`) 
VALUES ('Ferguson', 'Alexis', 'alexangel@yahoo.com', 'F', '1956-09-19', 'Artist', 'Pflugerville', 'MA', 'single', 'animals', 'single M');

update my_contactsTEST set city =
case
when location like 'Palo%' then 'Palo Alto'
when location like 'San Die%' then 'San Diego'
when location like 'San Fran%' then 'San Francisco'
when location like 'Dallas%' then 'Dallas'
when location like 'Prince%' then 'Princeton'
when location like 'Mount%' then 'Mountain View'
when location like 'New Y%' then 'New York City'
when location like 'Wood%' then 'Woodstock'
end;

update my_contactsTEST set state = 
case 
when location like '%CA' then 'CA'
when location like '%TX' then 'TX'
when location like '%NJ' then 'NJ'
when location like '%NY' then 'NY'
end;

alter table my_contactsTEST drop column location;

alter table my_contactsTEST add column interest1 varchar(99) not null, add column interest2 varchar(99) not null, add column interest3 varchar(99) not null, add column interest4 varchar(99) not null;

update my_contactsTEST set interest1 = substring_index(interests, ',', 1);
update my_contactsTEST set interests = trim(right(interests, (length(interests) - length(interest1) - 1)));
update my_contactsTEST set interest2 = substring_index(interests, ',', 1);
update my_contactsTEST set interests = trim(right(interests, (length(interests) - length(interest2) - 1)));
update my_contactsTEST set interest3 = substring_index(interests, ',', 1);
update my_contactsTEST set interests = trim(right(interests, (length(interests) - length(interest3) - 1)));
update my_contactsTEST set interest4 = substring_index(interests, ',', 1);

alter table my_contactsTEST drop column interests;

select * from my_contactsTEST;

update my_contactsTEST set interest1 = substring_index(interests, ',', 1);
update my_contactsTEST set interests = substring(interests, length(interest1)+2);
update my_contactsTEST set interest2 = substring_index(interests, ',', 1);
update my_contactsTEST set interests = substring(interests, length(interest2)+2);
update my_contactsTEST set interest3 = substring_index(interests, ',', 1);
update my_contactsTEST set interests = substring(interests, length(interest3)+2);
update my_contactsTEST set interest4 = substring_index(interests, ',', 1);
update my_contactsTEST set interests = substring(interests, length(interest4)+2);










#--------------------#--------------------#--------------------#--------------------#--------------------#--------------------#--------------------#--------------------#--------------------
drop table professionT;

create table professionT (
id int(20) not null auto_increment primary key,
contact_id int(20) not null, foreign key (id) references my_contactsTEST(id),
profession varchar(30) not null
);

update professionT set profession = (select my_contacts(profession));








