DROP TABLE job_current;

create table job_current (
contact_id int(11) not null primary key,
title varchar(55) default null,
salary int not null,
#start_date timestamp null default current_timestamp
start_date timestamp,
constraint job_current_contact_id_fk foreign key (contact_id) references my_contacts(contact_id)
);

select title from job_listings;
#insert into job_current values (2, 'title', 1234, current_timestamp());

insert into job_current(contact_id, title, salary, start_date)
select mc.contact_id, p.mc_prof, '66000', timestamp('2011-01-01 01:10:22')
from my_contacts mc
inner join profession p
on p.prof_id = mc.prof_id;

select * from job_current;

START TRANSACTION;
ROLLBACK;

update  job_current set start_date =
case
when job_current.contact_id = 10 then '2013-01-01 01:10:22'
when job_current.contact_id = 11 then '2012-06-01 01:10:22'
when job_current.contact_id = 12 then '2014-02-01 01:10:22'
when job_current.contact_id = 8 then '2009-03-01 01:10:22'
when job_current.contact_id = 6 then '2016-08-01 01:10:22'
when job_current.title like 'Web Developer' then '2012-04-10 05:10:22'
when job_current.title like 'Web Designer' then '2012-01-01 00:01:00'
else '2011-01-01 01:10:22'
end;

update job_current set salary = 
case
when contact_id like 1 then 55000
when contact_id like 2 then 46000
when contact_id like 3 then 76000
when contact_id like 4 then 186000
when contact_id like 5 then 70000
when contact_id like 11 then 73000
when contact_id like 12 then 50000
#when title like 'Web Developer' then 80000
#when title like 'Web Designer' then 70000
when title like 'Maniac' then 150
when contact_id = (select contact_id from my_contacts where last_name = 'Stallone') then 85000
when contact_id = (select contact_id from my_contacts where last_name = 'Travolta') then 86500
when contact_id = (select contact_id from my_contacts where last_name = 'Stalin') then 99000
when contact_id = (select contact_id from my_contacts where last_name = 'Lenin') then 89000
else 66600
end;

SELECT * FROM job_current order by contact_id;

select mc.id, mc.first_name, mc.last_name, cur.title as profession, cur.salary
from my_contacts mc
inner join job_current cur on mc.id = cur.contact_id
where cur.title = 'Web Developer';





