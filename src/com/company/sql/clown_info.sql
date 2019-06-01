create table clown_info (name varchar(50) default null, last_seen varchar(50) default null,
appearance varchar(50) default null, activities varchar(50) default null)
ENGINE=MyISAM default CHARSET=latin1;

use gregs_list;

desc clown_info;

drop table clown_info;

INSERT INTO clown_info VALUES ('Elise', 'Cherry Hill Senior Center', 'F, red hair, green dress, huge feet',
'balloons, little car'), ('Pickles', 'Jack Green\'s party', 'M, orange hair, blue suit, huge feet', 'mime'),
('Snuggles', 'Ball Mart', 'F, yellow shirt, baggy red pants', 'horn, umbrells'), ('Mr. Hobo', 'Party for 
Eric Gray', 'M, cigar, black hair, tiny hat violin', ''), ('Clarabelle', 'Belmont Senior Center', 'F, 
pink hair, huge flower, blue dress', 'yelling, dancing'), ('Scooter', 'Oaklend Hospital', 'M, blue hair,
red suit, huge nose', 'balloons'), ('Zippo', 'Millstone Mall', 'F, orange suit, baggy pants', 'dancing'),
('Babe', 'Earl\'s Autos', 'F, all pink and sparkly', 'singing, dancing'), ('Sniffles', 'Tracy\'s', 'M,
green and purple suit, pointy nose',''), ('Bonzo','','M, in drag, polka dotted dress', 'singing, dancing');

insert into clown_info values ('Zippo','Millstone Mall','F, orange suit, baggy pants','dancing,singing');
insert into clown_info values ('Snuggles','Ball-Mart','F, yellow shirt, baggy blue pandts','horn, umbrella');
insert into clown_info values ('Bonzo','Dickson Park','M, in drag, polka dotted dress','singing, dancing');
insert into clown_info values ('Sniffles','Tracy\'s','M, green and purple suit, pointy nose','climbing into tiny car');
insert into clown_info values ('Mr.Hobo','Eric Gray\'s party','M, cigar, black hair, tiny nose','ballons');

select * from clown_info;

select * from clown_info where name = 'zippo';

delete from clown_info where activities = 'dancing';

insert into clown_info values ('Clarabelle', 'Belmont Senior Center', 'F, 
pink hair, huge flower, blue dress', 'dancing');

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
