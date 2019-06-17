DROP TABLE interests;

CREATE TABLE interests (
int_id int not null auto_increment primary key,
interest varchar(50) 
);
START TRANSACTION;
insert into interests (interest) select distinct interest1 from my_contacts ;
insert into interests (interest) select distinct interest2 from my_contacts where interest2 != '';
insert into interests (interest) select distinct interest3 from my_contacts where interest3 != '';
insert into interests (interest) select distinct interest4 from my_contacts where interest4 != '';
delete from interests where int_id = 17;	#fishing duplicate

START TRANSACTION;
ROLLBACK;
COMMIT;

SELECT * FROM interests;


#---------------#---------------#---------------#---------------#---------------#---------------#---------------#---------------#---------------
DROP TABLE contact_interest;

create table contact_interest (
contact_id int(10) not null,
interest_id int(10) not null
);

insert into contact_interest(interest_id, contact_id) select int_id, contact_id from interests, my_contacts
where interests.interest like my_contacts.interest1;
insert into contact_interest(interest_id, contact_id) select int_id, contact_id from interests, my_contacts 
where interest like my_contacts.interest2;
insert into contact_interest(interest_id, contact_id) select int_id, contact_id from interests, my_contacts 
where interests.interest like my_contacts.interest3;
insert into contact_interest(interest_id, contact_id) select int_id, contact_id from interests, my_contacts 
where interests.interest like my_contacts.interest4;

SELECT * FROM contact_interest order by contact_id;

delete from contact_interest where contact_id > 21;
delete from contact_interest where contact_id = 15;




select * from my_contacts;
select * from interests;
desc interests;
drop table interests;

CREATE TABLE interests (
int_id int(11) not null auto_increment primary key,
interests varchar(50) not null
);





select * from contact_interest;
desc contact_interest;
drop table contact_interest;

create table contact_interest (
contact_id int(11) not null,
interest_id int(11) not null,
constraint my_contacts_contact_id_fk foreign key (contact_id) references my_contacts(contact_id),
constraint interests_int_id_fk foreign key(interest_id) references interests(int_id)
);






























