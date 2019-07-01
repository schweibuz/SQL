DROP TABLE interests;

CREATE TABLE interests (
interest_id int not null auto_increment primary key,
interest varchar(50) not null 
);
START TRANSACTION;

insert into interests(interest)
select distinct interest1 from my_contacts where interest1 != ''
UNION
select distinct interest2 from my_contacts where interest2 != ''
UNION
select distinct interest3 from my_contacts where interest3 != ''
UNION
select distinct interest4 from my_contacts where interest4 != ''; 

START TRANSACTION;
ROLLBACK;
COMMIT;

SELECT * FROM interests;


#---------------#---------------#---------------#---------------#---------------#---------------#---------------#---------------#---------------
DROP TABLE contact_interest;

create table contact_interest (
contact_id int(11) not null,
interest_id int(11) not null,
constraint my_contacts_contact_id_fk foreign key (contact_id) references my_contacts(contact_id),
constraint interests_int_id_fk foreign key(interest_id) references interests(interest_id));

desc contact_interest;

insert into contact_interest(contact_id, interest_id) select mc.contact_id, it.interest_id from my_contacts mc, interests it where it.interest like mc.interest1  and interest1 != ''
union
select mc.contact_id, it.interest_id from my_contacts mc, interests it where mc.interest2 like it.interest and interest2 != ''
union
select mc.contact_id, it.interest_id from my_contacts mc, interests it where mc.interest3 like it.interest and interest3 != ''
union
select mc.contact_id, it.interest_id from my_contacts mc, interests it where mc.interest4 like it.interest and interest4 != '';

SELECT * FROM contact_interest order by contact_id;

delete from contact_interest where contact_id > 21;
delete from contact_interest where contact_id = 15;