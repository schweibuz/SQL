DROP TABLE seeking;

create table seeking (
seeking_id int(11) auto_increment primary key not null,
seeking varchar(50) not null
);

insert into seeking(seeking) select distinct trim(substring_index(seeking, ',', 1)) from my_contacts;

insert into seeking(seeking) select distinct seeking1 from my_contacts;

delete from seeking where seeking = '';
update seeking set seeking = trim(right(seeking, (length(seeking) - 1))) where seeking_id = 16;

SELECT * FROM seeking;



#---------------#---------------#---------------#---------------#---------------#---------------#---------------
DROP TABLE contact_seeking;

create table contact_seeking (
contact_id int(11) not null,
seeking_id int(11) not null,
constraint seeking_my_contacts_contact_id_fk foreign key(contact_id) references my_contacts(contact_id),
constraint seeking_seeking_seeking_id_fk foreign key(seeking_id) references seeking(seeking_id));

insert into contact_seeking(contact_id, seeking_id) select mc.contact_id, s.seeking_id from my_contacts mc 
inner join seeking s 
on substring_index(mc.seeking, ',', 1)  like s.seeking;
insert into contact_seeking(contact_id, seeking_id) select mc.contact_id, s.seeking_id from my_contacts mc
inner join seeking s
on trim(right(mc.seeking, (length(mc.seeking) - (length(substring_index(mc.seeking, ',', 1))+1)))) like s.seeking;

SELECT * FROM contact_seeking order by contact_id;

select trim(right(mc.seeking, (length(mc.seeking) - (length(substring_index(mc.seeking, ',', 1))+1)))) from my_contacts mc;

select mc.contact_id, s.seeking, s.seeking_id, cs.seeking_id from my_contacts mc, contact_seeking cs natural join seeking s order by mc.contact_id;





