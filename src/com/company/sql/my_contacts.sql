# Dump of table my_contacts
# ------------------------------------------------------------
create database gregs_list2;
USE gregs_list2;
show create table my_contacts;
DROP TABLE my_contacts;
SELECT * FROM my_contacts;
desc my_contacts;

CREATE TABLE `my_contacts` (
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

INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Anderson','Jillian','jill_anderson@ \nbreakneckpizza.com','F','1980-09-05','Technical Writer','Palo Alto, CA','single','kayaking, reptiles','relationship, friends');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Kenton','Leo','lkenton@starbuzzcoffee.com','M','1974-01-10','Manager','San Francisco, CA','divorced','women','women to date');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('McGavin','Darrin','captainlove@headfirsttheater.com','M','1966-01-23','Cruise Ship Captain','San Diego, CA','single','sailing, fishing, yachting','women for casual relationships');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Franklin','Joe','joe_franklin@leapinlimos.com','M','1977-04-28','Software Sales','Dallas, TX','married','fishing, drinking','new job');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Hamilton','Jamie','dontbother@starbuzzcoffee.com','F','1964-09-10','System Administrator','Princeton, NJ','married','RPG','nothing');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Chevrolet','Maurice','bookman4u@objectville.net','M','1962-07-01','Bookshop Owner','Mountain View, CA','married','collecting books, scuba diving','friends');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Kroger','Renee','poorrenee@mightygumball.net','F','1976-12-03','Unemployed','San Francisco, CA','divorced','cooking','employment');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Mendoza','Angelina','angelina@starbuzzcoffee.com','F','1979-08-19','UNIX Sysadmin','San Francisco, CA','married','acting, dancing','new job');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Murphy','Donald','padraic@tikibeanlounge.com','M','1967-01-23','Computer Programmer','New York City, NY','committed relationsh','RPG, anime','friends');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Spatner','John','jpoet@objectville.net','M','1963-04-18','Salesman','Woodstock, NY','married','poetry, screenwriting','nothing');

alter table my_contacts add column (city varchar(50) null, state varchar(10) null, contact_id int(11));
alter table my_contacts modify column contact_id int(11) auto_increment primary key not null first;
#alter table my_contacts change column contact_id id int(11) auto_increment not null first;
update my_contacts set state =
case
when location like '%CA' then 'CA'
when location like '%TX' then 'TX'
when location like '%NJ' then 'NJ'
when location like '%NY' then 'NY'
end;

update my_contacts set city =
case
when location like 'Palo%' then 'Palo Alto'
when location like 'San F%' then 'San Francisco'
when location like 'San D%' then 'San Diego'
when location like 'Dal%' then 'Dallas'
when location like 'Prince%' then 'Princeton'
when location like 'Mount%' then 'Mountain View'
when location like 'New Y%' then 'New York City'
when location like 'Wood%' then 'Woodstock'
when location like 'Aus%' then 'Austin'
end;

alter table my_contacts drop column location;

INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`city`,`state`,`status`,`interests`,`seeking`) 
VALUES ('Moore','Nigel','nigelmoore@ranchersrule.com','M','1975-08-28', 'Rancher','Austin', 'TX', 'single', 'animals, horseback riding, movies', 'single F');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`city`, `state`,`status`,`interests`,`seeking`) 
VALUES ('Fiore', 'Carla', 'cfiore@fioreanimaclinic.com', 'F', '1974-01-07', 'Veterinarian', 'Round Rock', 'TX', 'single', 'animals, horseback riding, movies, mystery novels, hiking', 'single M');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`city`, `state`,`status`,`interests`,`seeking`) 
VALUES ('Sullivan', 'Regis', 'me@kathieleeisaflake.com', 'M', '1955-03-20', 'Comedian', 'Cambridge', 'MA', 'single', 'animals, trading cards, geocaching', 'single F');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`city`, `state`,`status`,`interests`,`seeking`) 
VALUES ('Ferguson', 'Alexis', 'alexangel@yahoo.com', 'F', '1956-09-19', 'Artist', 'Pflugerville', 'MA', 'single', 'animals', 'single M');

alter table my_contacts add column phone varchar(50) not null after first_name;
alter table my_contacts change column phone phone varchar(55) after first_name;
update my_contacts set phone =
case
when contact_id = 1 then '(555) 555-1234'
when contact_id = 2 then '(555) 555-4312'
when contact_id = 3 then '(555) 555-4356'
when contact_id = 4 then '(555) 555-9901'
when contact_id = 5 then '(555) 555-3456'
when contact_id = 6 then '(555) 555-2344'
when contact_id = 7 then '(555) 555-7656'
when contact_id = 8 then '(555) 555-0666'
when contact_id = 9 then '(555) 555-7777'
when contact_id = 10 then '(555) 555-9994'
when contact_id = 11 then '(555) 555-5435'
when contact_id = 12 then '(555) 555-5566'
when contact_id = 13 then '(555) 555-2332'
when contact_id = 14 then '(555) 555-1111'
end;
#update my_contacts set seeking = 'single M' where id = '17';
#delete from my_contacts where email is null;

alter table my_contacts add column (interest1 varchar(50) null, interest2 varchar(50) null, 
interest3 varchar(50) null, interest4 varchar(50) null);

update my_contacts set interest1 = substring_index(interests, ',', 1);
update my_contacts set interests = trim(right(interests, (length(interests) - length(interest1) - 1)));
update my_contacts set interest2 = substring_index(interests, ',', 1);
update my_contacts set interests = trim(right(interests, (length(interests) - length(interest2) - 1)));
update my_contacts set interest3 = substring_index(interests, ',', 1);
update my_contacts set interests = trim(right(interests, (length(interests) - length(interest3) - 1)));
#update my_contacts set interests = substring(interests, length(interest1)+2);
update my_contacts set interest4 = substring_index(interests, ',', 1);
alter table my_contacts drop column interests;

SELECT * FROM my_contacts;

alter table my_contacts add column (prof_id int(10) not null, zip_code int(10) not null, status_id int(10) not null);

#prof_id
update my_contacts 
set prof_id = (select id from profession
where my_contacts.profession = profession.profession);

#zip_code
update my_contacts
set zip_code = (select zip_code from zip_code
where my_contacts.city = zip_code.city and my_contacts.state = zip_code.state) ;

#status_id
update my_contacts
set status_id = (select status_id from status
where my_contacts.status = status.status);

#CREATE seeking COLUMNS and their UPDATE
alter table my_contacts add column (seeking1 varchar(50) default null, seeking2 varchar(50) default null);
update my_contacts set seeking1 = substring_index(seeking, ',', 1);
update my_contacts set seeking = substring(seeking, length(seeking1) + 2);
update my_contacts set seeking2 = substring_index(seeking, ',', 1);
update my_contacts set seeking2 = trim(right(seeking2, (length(seeking1) - 1)));

#FOREIGN KEY to prof, zip, status, cont_inter, cont_seek
alter table my_contacts add constraint my_con_prof_fk foreign key(prof_id) references profession(id),
add constraint zip_code_zipid_fk foreign key(zip_code) references zip_code(zip_code),
add constraint status_statid_fk foreign key(status_id) references status(status_id);
alter table contact_interest
add constraint cont_inter_conid_fk foreign key(contact_id) references my_contacts(contact_id),
add constraint cont_inter_interid_fk foreign key(interest_id) references interests(int_id);
alter table contact_seeking
add constraint contact_seeking_conid_fk foreign key (contact_id) references my_contacts(contact_id),
add constraint contact_seeking_seekid_fk foreign key(seeking_id) references seeking(seeking_id);
alter table job_current 
add constraint job_current_fk foreign key(contact_id) references my_contacts(contact_id);
alter table job_desired 
add constraint job_desired_fk foreign key(contact_id) references my_contacts(contact_id);

#DROP   FOREIGN   KEYS	
alter table my_contacts drop foreign key my_con_prof_fk, drop foreign key zip_code_zipid_fk, drop foreign key status_statid_fk; 
alter table contact_interest drop foreign key cont_inter_conid_fk, drop foreign key cont_inter_interid_fk;
alter table contact_seeking drop foreign key contact_seeking_conid_fk, drop foreign key contact_seeking_seekid_fk;
alter table job_current drop foreign key job_current_fk;
alter table job_desired drop foreign key job_desired_fk;


#DROP city, state, status, profession, interests, seeking
alter table my_contacts drop profession, drop city, drop state, drop status;
alter table my_contacts drop column interest1, drop column interest2, drop column interest3, drop column interest4;
alter table my_contacts drop column seeking, drop column seeking1, drop column seeking2;

SELECT * FROM my_contacts;

SELECT @last := LAST_INSERT_ID() ;

START TRANSACTION;
ROLLBACK;
#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!#!!!!!!!!!!!!
#DATA FOR FREDDY KRUEGER
INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
SELECT 'Krueger', 'Freddy', '(666) 000-0000', 'krueger@mail.ad', 'M', '1966-01-13', p.id, z.zip_code, s.status_id
from ((profession p inner join zip_code z on zip_code = 4)
inner join status s on s.status_id = 4 ) where p.profession = 'Maniac';
insert into contact_seeking (contact_id, seeking_id) select mc.contact_id, sk.seeking_id from my_contacts mc inner join seeking sk on mc.last_name = 'Krueger' and sk.seeking_id > 6;
insert into contact_interest (contact_id, interest_id) select mc.contact_id, it.int_id from my_contacts mc inner join interests it on mc.last_name = 'Krueger' and it.int_id < 3;
#DATA FOR WEB DEVELOPERS
INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
SELECT 'Travolta', 'John', '(111) 222-3344', 'travolter@trav.tr', 'M', '1954-02-18', p.id, z.zip_code, s.status_id
from ((profession p inner join zip_code z on zip_code = 3)
inner join status s on s.status_id = 2 ) where p.profession = 'Web Developer';
insert into contact_seeking (contact_id, seeking_id) select mc.contact_id, sk.seeking_id from my_contacts mc inner join seeking sk on mc.prof_id = 
(select id from profession p where p.profession = 'Web Developer') and sk.seeking_id < 3;
insert into contact_interest (contact_id, interest_id) select mc.contact_id, it.int_id from my_contacts mc inner join interests it on mc.prof_id = 
(select id from profession p where p.profession = 'Web Developer') and it.int_id < 2;

INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
SELECT 'Stallone', 'Sylvester', '(123) 432-4324', 'stalloner@stal.ru', 'M', '1946-07-06', p.id, z.zip_code, s.status_id
from ((profession p inner join zip_code z on zip_code = 6)
inner join status s on s.status_id = 1 ) where p.profession = 'Web Developer';
insert into contact_seeking (contact_id, seeking_id) select mc.contact_id, sk.seeking_id from my_contacts mc inner join seeking sk on mc.contact_id = 
(select last_insert_id()) and sk.seeking_id < 3;
insert into contact_interest (contact_id, interest_id) select mc.contact_id, it.int_id from my_contacts mc inner join interests it on mc.contact_id = 
(select last_insert_id()) and it.int_id < 2;

INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
SELECT 'Luntgren', 'Dolph', '(012) 999-6565', 'dolphy@yandex.ru', 'M', '1957-11-03', p.id, z.zip_code, s.status_id
from ((profession p inner join zip_code z on zip_code = 4)
inner join status s on s.status_id = 4 ) where p.profession = 'Web Developer';
insert into contact_seeking (contact_id, seeking_id) select mc.contact_id, sk.seeking_id from my_contacts mc inner join seeking sk on mc.contact_id = 
(select last_insert_id()) and sk.seeking_id = 2;
insert into contact_interest (contact_id, interest_id) select mc.contact_id, it.int_id from my_contacts mc inner join interests it on mc.contact_id = 
(select last_insert_id()) and it.interest = ('RPG');

select profession from profession where profession = 'Web Designer';
#!!! 
INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
SELECT 'Stalin', 'Iosiph', '(999) 777-7979', 'ussr2@soviet.ru', 'M', '1879-12-09', p.id, z.zip_code, s.status_id
from ((profession p inner join zip_code z on city = 'Moscow')
inner join status s on s.status_id = 3 ) where p.profession = 'Web Designer';
insert into contact_seeking (contact_id, seeking_id) select mc.contact_id, sk.seeking_id from my_contacts mc inner join seeking sk on mc.contact_id = 
(select last_insert_id()) and sk.seeking_id = 5;
insert into contact_interest (contact_id, interest_id) select mc.contact_id, it.int_id from my_contacts mc inner join interests it on mc.contact_id = 
(select last_insert_id()) and it.interest = ('RPG');

INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
SELECT 'Lenin', 'Vladimir', '(999) 777-7997', 'ussr1@soviet.ru', 'M', '1870-04-10', p.id, z.zip_code, s.status_id
from ((profession p inner join zip_code z on city = 'Moscow')
inner join status s on s.status_id = 1 ) where p.profession = 'Web Designer';
insert into contact_seeking (contact_id, seeking_id) select mc.contact_id, sk.seeking_id from my_contacts mc inner join seeking sk on mc.contact_id = 
(select last_insert_id()) and sk.seeking_id = 5;
insert into contact_interest (contact_id, interest_id) select mc.contact_id, it.int_id from my_contacts mc inner join interests it on mc.contact_id = 
(select last_insert_id()) and it.interest = ('RPG');

INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
SELECT 'Hrushev', 'Nikita', '(999) 799-9797', 'ussr4@soviet.ru', 'M', '1894-04-03', p.id, z.zip_code, s.status_id
from ((profession p inner join zip_code z on city = 'Moscow')
inner join status s on s.status_id = 1 ) where p.profession = 'Web Designer';
insert into contact_seeking (contact_id, seeking_id) select mc.contact_id, sk.seeking_id from my_contacts mc inner join seeking sk on mc.contact_id = 
(select last_insert_id()) and sk.seeking_id = 4;
insert into contact_interest (contact_id, interest_id) select mc.contact_id, it.int_id from my_contacts mc inner join interests it on mc.contact_id = 
(select last_insert_id()) and it.interest = ('fishing');

delete from my_contacts where contact_id > 14;
delete from my_contacts where contact_id = 23;

SELECT * FROM my_contacts;

INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
SELECT 'Murphy', 'Pat', '(813) 555-1239', 'patmurphy@someemail.com', 'X', '1978-04-15', p.id, z.zip_code, s.status_id
from ((profession p inner join zip_code z on city = 'New York City')
inner join status s on s.status_id = 3 ) where p.profession = 'Teacher';		#this human hasn't interests and not seeking
#WASN'T USED STATEMENT BELOW
insert into contact_seeking (contact_id, seeking_id) select mc.contact_id, sk.seeking_id from my_contacts mc inner join seeking sk on mc.id = 
(select last_insert_id()) and sk.seeking_id = 4;
insert into contact_interest (contact_id, interest_id) select mc.contact_id, it.int_id from my_contacts mc inner join interests it on mc.id = 
(select last_insert_id()) and it.interest = ('fishing');

ALTER TABLE my_contacts ENGINE = InnoDB;



SELECT * FROM my_contacts; 			#!!!!!!!!!!!!!!!

desc my_contacts;

show create table my_contacts;

alter table my_contacts add column contact_id int not null auto_increment first, add primary key(contact_id);

alter table my_contacts add column phone varchar(10) after first_name;

alter table my_contacts add column city varchar(50) not null, add column state varchar(2) not null;

update my_contacts set state = right(location, 2);

update my_contacts set city = substring_index(location, ',', 1);

alter table my_contacts drop location;

#create table interests
alter table my_contacts add column interest1 varchar (50) default null, add column interest2 varchar(50) default null, 
add column interest3 varchar(50) default null, add column interest4 varchar(50) default null;
select trim(right(interests, (length(interests) - 1 - length(interest1)))) as dfgdfg from my_contacts;
update my_contacts set interest1 = substring_index(interests, ',', 1);
update my_contacts set interests = trim(right(interests, (length(interests) - 1 - length(interest1))));
update my_contacts set interest2 = substring_index(interests, ',', 1);
update my_contacts set interests = trim(right(interests, (length(interests) - 1 - length(interest2))));
update my_contacts set interest3 = substring_index(interests, ',', 1);
update my_contacts set interests = trim(right(interests, (length(interests) - (length(interest3) + 1))));
update my_contacts set interest4 = substring_index(interests, ',', 1);
alter table my_contacts drop column interests;

alter table my_contacts add column (prof_id int(11) not null, zip_code int(11) not null, status_id int(11) not null);

update my_contacts mc set prof_id = (select prof_id from profession p where p.mc_prof = mc.profession);

update my_contacts mc set mc.zip_code = (select z.zip_code from zip_code z where z.city = mc.city and mc.state = z.state);

update my_contacts mc set mc.status_id = (select s.status_id from status s where s.status = mc.status);

alter table my_contacts drop column profession, drop column city, drop column status, drop column state;
select * from my_contacts;






