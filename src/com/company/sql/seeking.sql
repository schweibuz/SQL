DROP TABLE seeking;

create table seeking (
seeking_id int(11) auto_increment primary key not null,
seeking varchar(50) default null
);

insert into seeking(seeking) select distinct seeking1 from my_contacts;

delete from seeking where seeking = '';
update seeking set seeking = trim(right(seeking, (length(seeking) - 1))) where seeking_id = 16;

SELECT * FROM seeking;



#---------------#---------------#---------------#---------------#---------------#---------------#---------------
DROP TABLE contact_seeking;

create table contact_seeking (
contact_id int(11) not null,
seeking_id int(11) not null
);

insert into contact_seeking(contact_id, seeking_id) select contact_id, seeking_id from my_contacts, seeking
where my_contacts.seeking1 like seeking.seeking;
insert into contact_seeking(contact_id, seeking_id) select contact_id, seeking_id from my_contacts, seeking
where my_contacts.seeking2 like seeking.seeking;

SELECT * FROM contact_seeking order by contact_id;

delete from contact_seeking where contact_id > 14;
delete from contact_seeking where contact_id = 14;



