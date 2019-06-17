CREATE TABLE movie_table (
movie_id int(11) NOT NULL auto_increment,
title varchar(50) NOT NULL,
rating varchar(5) NOT NULL,
category varchar(10) NOT NULL,
purchased date NOT NULL,
PRIMARY KEY (movie_id)
) ENGINE = MyISAM auto_increment=94 default charset=utf8;

drop table movie_table;

use gregs_list;

select * from movie_table;

INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('183','Big Advenure','G','family','2002-03-06');
INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('189','Shiny Things, The','PG','drama','2002-03-06');
INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('188','End of the Line','R','misc','2001-02-05');
INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('187','A Rat named Darcy','G','family','2003-04-19');
INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('186','Head First Rules','R','action','2003-04-19');
INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('185','Mad Clowns','R','horror','1999-11-20');
INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('184','Greg: The Untold Story','PG','action','2001-02-05');
INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('193','Potentially Habitable Planet','PG','scifi','2001-02-05');
INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('192','Weird Things from Space','PG','scifi','2003-04-19');
INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('191','Shark Bait','G','misc','1999-11-20');
INSERT INTO movie_table (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('190','Take it Back','R','comedy','2001-02-05');

alter table movie_table add drama char, add comedy char, add action char, add gore char, add scifi char,
add for_kids char, add cartoon char;

update movie_table set drama = 'F', comedy = 'F', action = 'F', gore = 'F', scifi = 'T', for_kids = 'F',
cartoon = 'F' where category = 'scifi';

update movie_table set new_column =
CASE
WHEN for_kids = 'T'
THEN 'newValue'
WHEN scifi = 'T'
THEN 'scifi2'
WHEN drama = 'T'
THEN 'dramas'
ELSE 'otherValue'
END;

update movie_table set category =
case
when drama = 'T' and gore = 'F' then 'drama'
when comedy = 'T' then 'comedy'
when action = 'T' then 'action'
when gore = 'T' and drama = 'F' then 'horror'
when scifi = 'T' and drama = 'F' then 'scifi'
when for_kids = 'T' then 'family'
when cartoon = 'T' and rating = 'G' then 'family'
else 'misc'
end;

update movie_table set category =
case
when drama = 'T' and rating = 'R' then 'drama-r'
when comedy = 'T' and rating = 'R' then 'comedy-r'
when action = 'T' and rating = 'R' then 'action-r'
when gore = 'T' and rating = 'R'then 'horror-r'
when scifi = 'T' and rating = 'R' then 'scifi-r'
when category = 'misc' and rating = 'G' then 'family'
when for_kids = 'T' then 'family'
when cartoon = 'T' then 'family'
when drama = 'T' then 'drama'
when comedy = 'T' then 'comedy'
when action = 'T' then 'action'
when gore = 'T' then 'horror'
when scifi = 'T' then 'scifi'
end;

update movie_table set category =
case
when drama = 'drama-r' then 'drama'
when comedy = 'comedy-r' then 'comedy'
when action = 'action-r' then 'action'
when gore = 'horror-r' then 'horror'
when scifi = 'scifi-r' then 'scifi'
when for_kids = 'T' then 'family'
when cartoon = 'T' then 'family'
when drama = 'T' then 'drama'
when comedy = 'T' then 'comedy'
when action = 'T' then 'action'
when gore = 'T' then 'horror'
when scifi = 'T' then 'scifi'
end;

alter table movie_table
drop column drama,
drop column comedy,
drop column action,
drop column gore,
drop column scifi,
drop column for_kids,
drop column cartoon;

select * from movie_table 
order by category asc;

select title, category from movie_table where title like 'B%' and category = 'family' order by title;

select title, category, purchased from movie_table order by category, purchased;

select title, category, purchased from movie_table order by purchased desc;

select title, category, purchased from movie_table order by category asc, purchased desc;

alter table movie_table add new_column varchar(55);


SELECT * FROM movie_table;


alter table movie_table add column drama char after rating, add column comedy char after rating, add column action char after rating, 
add column gore char after rating, add column sdifi char after rating, add column for_kids char after rating, add column cartoon char after rating;
alter table movie_table change column sdifi scifi char;

update movie_table set cartoon = 'F';
update movie_table set for_kids = 'F';
update movie_table set scifi = 'F';
update movie_table set gore = 'F';
update movie_table set action = 'F';
update movie_table set comedy = 'F';
update movie_table set drama = 'F';

update movie_table set cartoon = 'T' where category = 'misc' and rating = 'R';
update movie_table set for_kids = 'T' where category = 'family';
update movie_table set for_kids = 'T' where category = 'misc' and rating = 'G';
update movie_table set scifi = 'T' where category = 'scifi';
update movie_table set gore = 'T' where category = 'horror';
update movie_table set action = 'T' where category = 'action';
update movie_table set comedy = 'T' where category = 'comedy';
update movie_table set drama = 'T' where category = 'drama';

update movie_table
set category = 
case 
when category = 'misc' and rating = 'R' then 'misc-r'
when category = 'action' and rating = 'R'  then 'action-r'
when category = 'drama'  and rating = 'R' then 'drama-r'
when category = 'comedy'  and rating = 'R' then 'comedy-r'
when category = 'horror'  and rating = 'R' then 'horror-r'
when for_kids = 'T' and rating = 'G' then 'family'
when cartoon = 'T' and rating = 'R' then 'misc'
when drama = 'T' then 'drama'
when comedy = 'T' then 'comedy'
when action = 'T' then 'action'
when gore = 'T' then 'horror'
when scifi = 'T' then 'scifi'
else 'misc'
end;
#revert
update movie_table
set category =
case
when category = 'misc-r' and rating = 'R' then 'misc' 
when category = 'action-r' and rating = 'R'  then 'action'
when category = 'drama-r' and rating = 'R' then 'drama'
when category = 'comedy-r' and rating = 'R' then 'comedy'
when category = 'horror-r' and rating = 'R' then 'horror'
when for_kids = 'T' and rating = 'G' then 'family'
when cartoon = 'T' and rating = 'R' then 'misc'
when drama = 'T' then 'drama'
when comedy = 'T' then 'comedy'
when action = 'T' then 'action'
when gore = 'T' then 'horror'
when scifi = 'T' then 'scifi'
else 'misc'
end;

alter table movie_table
drop column cartoon,
drop column for_kids,
drop column scifi,
drop column gore,
drop column action,
drop column comedy,
drop column drama;

select title, category from movie_table
where
category = 'family'
order by title;


drop table simple_table;
create table simple_table (
test_chars char not null)
ENGINE = MyISAM auto_increment=94 default charset=utf8;

insert into simple_table (test_chars) values ('0'),('1'),('2'),('3'),('A'),('B'),('C'),('D'),('a'),('b'),('c'),('d'),('!'),('@'),('#'),('$'),('%'),('^'),('&'),('*'),('('),(')'),('-'),('_'),(' '),('+'),('='),('['),(']'),('{'),('}'),(';'),(':'),('|'),('`'),('~'),(','),('.'),('<'),('>'),('/'),('?');

select * from simple_table order by test_chars;


SELECT * FROM movie_table;

select title, category, purchased from movie_table order by category, purchased, title;








































































