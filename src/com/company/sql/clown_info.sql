
create table clown_info (
name varchar(50) default null, 
last_seen varchar(50) default null,
appearance varchar(50) default null, 
activities varchar(50) default null
) ENGINE = innodb;

use gregs_list;
desc clown_info;

drop table clown_info;
drop table clown_info, location, description, info_location;

INSERT INTO clown_info VALUES ('Elise', 'Cherry Hill Senior Center', 'F, red hair, green dress, huge feet','balloons, little car'), 
('Pickles', 'Jack Green\'s party', 'M, orange hair, blue suit, huge feet', 'mime'),
('Snuggles', 'Ball Mart', 'F, yellow shirt, baggy red pants', 'horn, umbrells'), 
('Mr. Hobo', 'Party for Eric Gray', 'M, cigar, black hair, tiny hat violin', ''), 
('Clarabelle', 'Belmont Senior Center', 'F, pink hair, huge flower, blue dress', 'yelling, dancing'), 
('Scooter', 'Oaklend Hospital', 'M, blue hair, red suit, huge nose', 'balloons'), 
('Zippo', 'Millstone Mall', 'F, orange suit, baggy pants', 'dancing'),
('Babe', 'Earl\'s Autos', 'F, all pink and sparkly', 'singing, dancing');

insert into clown_info values ('Zippo','Millstone Mall','F, orange suit, baggy pants','dancing,singing');
insert into clown_info values ('Bonzo','Dickson Park','M, in drag, polka dotted dress','singing, dancing');
insert into clown_info values ('Sniffles','Tracy\'s','M, green and purple suit, pointy nose','climbing into tiny car');
insert into clown_info values ('Mr.Hobo','Eric Gray\'s party','M, cigar, black hair, tiny nose','ballons');

select * from clown_info;

select * from clown_info where name = 'zippo';

delete from clown_info where activities = 'dancing';
delete from clown_info where activities = '';

alter table clown_info add column id int (11) primary key not null auto_increment first;

#descriptioin table
create table if not exists description (
id int(11) not null, gender char(1) default null, description varchar(55) default null)
engine = innodb;

drop table description;
desc description;
select * from description;

insert into description(id, gender, description) 
select distinct id,
substring_index(appearance, ',', 1),
trim(right(appearance, length(appearance) - (length(substring_index(appearance, ',', 1)) + 1))) from clown_info;

#location
create table if not exists location (
location_id int (11) not null primary key auto_increment, location varchar (55) not null)
engine = innodb;

drop table location;
select * from location;

insert into location(location)
select distinct last_seen from clown_info where last_seen <> '';

#info_location
create table info_location (
id int (11) not null,
location_id int (11) not null,
when_ varchar (55) default null,
constraint id_clown_location_fk foreign key(id) references clown_info(id),
constraint location_id_fk foreign key(location_id) references location(location_id)
) engine = innodb;

drop table info_location;
select * from info_location;

insert into info_location (id, location_id)
select ci.id, il.location_id from clown_info ci inner join location il where ci.last_seen = il.location ;

#clown_boss
alter table clown_info add column boss_id int(11) default null;
update clown_info set boss_id =
case
when id = 1 then 3
when id = 2 then 5
when id = 3 then 10
when id = 4 then 3
when id = 5 then 6
when id = 6 then 3
when id = 7 then 3
when id = 8 then 5
when id = 9 then 5
when id = 10 then 10
end;
alter table clown_info drop last_seen, drop appearance, drop activities;

select c1.id, c1.name, c2.name as boss from clown_info c1 inner join clown_info c2 on c1.boss_id = c2.id;

select c1.name, (select name from clown_info where c1.boss_id = id) as boss from clown_info c1;



select * from clown_info;

delete from clown_info where activities = 'yelling, dancing' and name = 'clarabelle';

alter table clown_info add column gender char(1) default null, add column hair varchar(20) default null,
add column pants varchar(20) default null, add column hat varchar(20) default null, 
add column dancing char(1) default null, add column singing char(1) default null, 
add column yelling char(1) default null, add column climbing char(1) default null, 
add column horn char(1) default null, drop activities, drop appearance;

update clown_info set gender='F',hair='red hair',pants='green dress',hat='clown hat',dancing='n',singing='n',
yelling='n',climbing='y',horn='n' where name='elise';
update clown_info set gender='M',hair='orange hair',pants='blue suit',hat='huge feet',dancing='n',
singing='n',yelling='y',climbing='n',horn='n' where name='mr. hobo';

delete from clown_info where dancing = 'n';

select * from clown_info;

delete from clown_info where last_seen like 'Oaklend%';
delete from clown_info where activities = 'violin';
update clown_info set activities = 'violin' where name = 'Mr. Hobo' and last_seen like 'party for%';

select * from clown_info where activities = 'dancing';

insert into clown_info values ('Zippo', 'Millstone Mall', 'F, orange suit, baggy pants', 'dancing, singing');

delete from clown_info where activities = 'dancing';

delete from clown_info where activities = 'dancing,singing';

update clown_info set last_seen = 'Tracy\'s' where name = 'Mr. Hobo' and last_seen like 'Party for%';

update clown_info set activities = 'singing' where name = 'zippo';

delete from clown_info where name = 'bonzo' and last_seen = '';

delete from clown_info where last_seen = 'Tracy\'s' and name like 'mr.%';

delete from clown_info where name ='Sniffles' and activities ='';




