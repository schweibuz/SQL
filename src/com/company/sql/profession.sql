DROP TABLE profession;

#1
CREATE TABLE profession (
id int(11) not null auto_increment primary key,
profession varchar(20)
);
INSERT INTO profession (profession)
select profession FROM my_contacts GROUP BY profession ORDER BY profession;

#2
create table profession as
select profession from my_contacts group by profession order by profession;
alter table profession
add column id int not null auto_increment first,
add primary key (id);

#3
create table profession (
id int(11) not null auto_increment primary key,
profession varchar(20)
) as
select profession from my_contacts
group by profession
order by profession;

create table profession (
id int(11) not null auto_increment primary key,
profession varchar(20)
) as
select profession as mc_prof from my_contacts
group by mc_prof
order by mc_prof;

SELECT * FROM profession;


alter table profession drop column profession;

select profession as mc_prof
from my_contacts as mc
group by mc_prof
order by mc_prof;

insert into profession (profession) values ('Maniac');
insert into profession (profession) values ('Web Developer');
insert into profession (profession) values ('Web Designer');
insert into profession (profession) values ('Teacher');
