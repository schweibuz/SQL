

select * from my_contacts;

select last_name, first_name, email, city from my_contacts where city = 'san francisco';

select * from my_contacts where length(first_name) > 3 and city = 'san francisco';

SELECT * from my_contacts where birthday >= '1969-01-01' and '1999-01-01';

select * from my_contacts where phone <> '%1';

select * from my_contacts where interest3 = '';

SELECT * from my_contacts where location like '%CA';

select * from my_contacts where status like '_arr%';

select * from my_contacts where first_name = 'Nigel';

select * from my_contacts 
where gender = 'F'
and status = 'single'
and state = 'TX'
and seeking like '%single M%'
and birthday > '1970-08-28'
and birthday < '1980-08-28'
and interests like '%animals%' or 'movies';

select * from my_contacts where first_name = 'Regis';

select * from my_contacts
where gender = 'F'
and state = 'MA'
and seeking like '%single M%'
and status = 'single'
and birthday > '1950-03-20'
and birthday < '1960-03-20';

select substring_index(interests, ',', 1) from my_contacts;

select * from my_contacts 
where gender = 'F'
and status = 'single'
and state = 'MA'
and seeking like '%single M%'
and birthday > '1950-08-28'
and birthday < '1960-08-28'
and substring_index(interests, ',', 1) = 'animals';

select first_name, last_name, right(email, length(email) - (length(email) - 4)) from my_contacts order by right(email, length(email) - (length(email) - 4));

select * from my_contacts
where gender = 'M'
and status = 'single'
and state = 'MA'
and seeking like '%single F%'
and birthday > '1950-08-28'
and birthday < '1960-08-28'
and (interest1 = 'animals' or interest2 = 'animals' or interest3 = 'animals' or interest4 = 'animals')
and (interest1 = 'geocaching' or interest2 = 'geocaching' or interest3 = 'geocaching' or interest4 = 'geocaching')
and (interest1 = 'trading cards' or interest2 = 'trading cards' or interest3 = 'trading cards' or interest4 = 'trading cards');

select substring('san antonio, tx', 5, 3);
select upper('asdfasdf');
select reverse('Hi');
select ltrim(' dofood ');
select rtrim(' catfood ');
select length('san antonio, tx');

SELECT * FROM my_contacts;

select status, profession, interests, seeking from my_contacts;
select distinct profession from my_contacts;
select distinct status from my_contacts;
select distinct interests from my_contacts;
select distinct seeking from my_contacts;

select mc.first_name, mc.email, p.mc_prof from my_contacts mc inner join profession p on mc.prof_id = p.prof_id;
select mc.first_name, mc.last_name, s.status from my_contacts mc inner join status s on mc.status_id = s.status_id;
select mc.first_name, mc.last_name, z.state from my_contacts mc inner join zip_code z on mc.zip_code = z.zip_code;

select mc.email, p.mc_prof from my_contacts mc natural join profession p;

select mc.first_name, mc.last_name, s.status from my_contacts mc inner join status s on mc.status_id <> s.status_id;

select mc.first_name, mc.last_name, z.state from my_contacts mc natural join zip_code z;

select mc.first_name, mc.last_name, ci.interest_id from my_contacts mc inner join contact_interest ci on mc.contact_id = ci.contact_id order by mc.contact_id;

select * from contact_seeking cross join seeking;

select p.mc_prof from my_contacts mc inner join profession p on mc.prof_id = p.prof_id group by p.mc_prof order by p.mc_prof asc;

select mc.first_name, mc.last_name, p.mc_prof, jc.title, jc.salary, jd.title, jd.salary_high from (my_contacts mc, profession p, job_current jc) inner join job_desired jd 
on mc.prof_id = p.prof_id and mc.contact_id = jc.contact_id and mc.contact_id = jd.contact_id;

select mc.first_name, mc.last_name, mc.phone, jc.title from my_contacts mc natural join job_current jc 
where jc.title in ('Cook', 'Hairdresser', 'Waiter', 'Manager', 'Rancher');

select mc.first_name, mc.last_name, mc.phone, jc.title from my_contacts mc natural join job_current jc where jc.title in (select title from job_listings);

select mc.first_name, mc.last_name from my_contacts mc where zip_code = (select zip_code from zip_code where city = 'Austin' and state = 'TX');

SELECT mc.first_name AS firstname, mc.last_name AS lastname, mc.phone AS phone, jc.title AS jobtitle
FROM job_current AS jc NATURAL JOIN my_contacts AS mc WHERE jobtitle IN (SELECT title FROM job_listings);

select max(salary) from job_current;

select mc.first_name, mc.last_name, jc.salary from my_contacts mc natural join job_current jc where jc.salary = (select max(jc.salary) from job_current jc);

update job_current set salary = 
case
when contact_id like 1 then 75000
when contact_id like 2 then 79000
when contact_id like 3 then 73000
when contact_id like 4 then 71000
when contact_id like 5 then 70000
when contact_id like 6 then 55000
when contact_id like 7 then 88000
when contact_id like 8 then 99000
when contact_id like 9 then 83000
else 66000
end;
select * from job_current;
select * from job_listings;
select * from my_contacts;
select * from zip_code natural join my_contacts;

select mc.first_name, mc.last_name, (select state from zip_code where mc.zip_code = zip_code) as state from my_contacts mc;

select mc.first_name, mc.last_name, jc.salary from my_contacts mc natural join job_current jc
where jc.salary > (select jc.salary from job_current jc natural join my_contacts mc where mc.first_name = 'Maurice');

select avg(salary) from job_current where title = 'Technical Writer';

select mc.first_name, mc.last_name, jc.salary, jc.salary - (select avg(jc.salary) from job_current jc where title = 'Technical Writer') as average 
from my_contacts mc natural join job_current jc where jc.title = 'Technical Writer';

select mc.first_name, mc.last_name, mc.phone, jc.title from my_contacts mc natural join job_current jc where jc.title in (select title from job_listings);

select mc.first_name, mc.last_name, mc.phone, jc.title from my_contacts mc natural join job_current jc where jc.title not in (select title from job_listings);

select jc.title from job_current jc where jc.salary = (select max(salary) from job_current);

select mc.first_name, mc.last_name from my_contacts mc natural join job_current jc where jc.salary > (select avg(salary) from job_current);

select mc.first_name, mc.last_name, mc.phone, jc.title from my_contacts mc natural join job_current jc
where jc.title = 'Technical Writer' and mc.zip_code in (select zip from job_listings where title = 'Technical Writer');

select first_name, last_name from my_contacts
where zip_code in (select mc.zip_code from my_contacts mc natural join job_current jc where jc.salary = (select max(salary) from job_current));

select mc.first_name, mc.last_name from my_contacts mc where 3 = (select count(*) from contact_interest where contact_id = mc.contact_id);

select mc.first_name firstname, mc.last_name lastname, mc.email email from my_contacts mc 
where not exists (select * from job_current jc where mc.contact_id = jc.contact_id);

select * from interests;
select * from contact_interest;
select * from my_contacts;

select mc.email from my_contacts mc 
where exists (select * from contact_interest ci where ci.contact_id = mc.contact_id)
and not exists (select * from job_current jc where jc.contact_id = mc.contact_id);

select mc.first_name, mc.last_name, mc.phone, zp.city, zp.state from my_contacts mc right outer join zip_code zp on mc.zip_code = zp.zip_code;

select count(ct.contact_id) as count, mc.first_name from my_contacts mc join contact_interest ct group by ct.contact_id;

 select title from job_current
 union all	#with duplicates
 select title from job_desired
 union all
 select title from job_listings order by title;
 
 create table my_union as
 select title from job_current union
 select title from job_desired union
 select title from job_listings;
create table my_union
select contact_id from job_current union
select salary from job_listings;
 select * from my_union;
 desc my_union;
 drop table my_union;
 
select mc.first_name, mc.last_name, mc.phone, jc.title
from job_current jc natural join my_contacts mc
inner join job_listings jl on jc.title = jl.title;

select title from job_listings where salary = (select max(salary) from job_listings);

select title from job_listings order by salary desc limit 1;

select mc.first_name, mc.last_name from my_contacts mc natural join job_current jc 
where jc.salary > (select avg(salary) from job_current);
 
select mc.first_name, pr.mc_prof from my_contacts mc join profession pr on mc.prof_id = pr.prof_id;

select count(*) as females from my_contacts where gender = 'F';
select count(*) as males from my_contacts where gender = 'M';
select count(*) as total from my_contacts;
select gender from my_contacts where gender <> 'M' and gender <> 'F';

select * from my_contacts mc natural join profession pr inner join job_desired jd 
on jd.title = 'Web Designer' and mc.contact_id = (select jd.contact_id where jd.title = 'Web Designer');

select * from job_listings where title = 'Technical Writer';





#Nigel query
select * from my_contacts
where gender = 'F'
and status = 'single'
and state='TX'
and seeking like '%single M%'
and birthday > '1970-08-28'
and birthday < '1980-08-28'
and interests like '%animals%'	#OR
and interests like '%horse%'	#OR
and interests like '%movies%';	#OR

#Regis query
select * from my_contacts
where gender = 'F'
and status = 'single'
and state = 'MA'
and seeking like '%single M%'
and birthday < '1960-03-20'
and birthday > '1950-03-20'
and SUBSTRING_INDEX(interests, ',', 1) = 'animals';

select substring_index(interests, ',', 2) from my_contacts;

select substring_index(interests, ',', 1) from my_contacts;
select last_name, substring_index(interests, ' ', -1) from my_contacts;
select last_name, substring_index(interests, 1, 1) from my_contacts;

select * from my_contacts
where gender = 'M'
and status = 'single'
and state = 'MA'
and seeking = 'single F'
and birthday < '1960-03-20'
and birthday > '1950-03-20'
and (
interest1 = 'animals'
or interest2 = 'animals'
or interest3 = 'animals'
or interest4 = 'animals'
)
and (
interest1 = 'trading cards'
or interest2 = 'trading cards'
or interest3 = 'trading cards'
or interest4 = 'trading cards'
)
and (
interest1 = 'geocaching'
or interest2 = 'geocaching'
or interest3 = 'geocaching'
or interest4 = 'geocaching'
);

select status from my_contacts group by status order by status;

select mc.last_name, 
mc.first_name, 
p.profession 
from my_contacts as mc 
INNER JOIN 
profession as p 
ON mc.prof_id = p.prof_id;

SELECT * FROM my_contacts;

select my_contacts.email, profession.profession 
from my_contacts 
inner  join profession
on profession.id = my_contacts.prof_id;

select mc.first_name, mc.last_name, st.status
from my_contacts as mc
inner join status as st
on mc.status_id = st.status_id
order by status;

select mc.first_name, mc.last_name, zip.state
from my_contacts as mc
inner join zip_code as zip
on mc.zip_code = zip.zip_code
order by state;

select mc.first_name, mc.last_name, st.status
from my_contacts mc
inner join status st
on mc.status_id <> st.status_id
order by status;

select mc.first_name, mc.last_name, st.status
from my_contacts mc
natural join status st;

select mc.id, mc.email, pr.profession
from my_contacts mc
natural join profession pr;

select mc.first_name, mc.last_name, st.state
from my_contacts mc
natural join zip_code st
order by state;

select * from contact_seeking
natural join seeking
order by contact_id;

select mc.id, mc.first_name, mc.last_name, p.profession, mc.prof_id, p.id 
from my_contacts mc
inner join profession p ON mc.prof_id = p.id;

SELECT p.profession FROM my_contacts mc
INNER JOIN profession p 
ON mc.prof_id = p.id 
GROUP BY profession 
ORDER BY profession;

select mc.id, mc.last_name, ci.interest_id, it.interest
from ((my_contacts mc 
inner join contact_interest ci on mc.id = ci.contact_id)
inner join interests it on it.int_id = ci.interest_id)
order by id;

select mc.id, mc.first_name, mc.last_name, jc.title, jc.salary, jc.start_date, jd.title as desired_prof, jl.salary as newJob_salary,
( ((((unix_timestamp(current_timestamp()) / 60) / 60) / 24) / 365) - ((((unix_timestamp(jc.start_date) / 60) / 60) / 24) / 365) ) as years_ex
from (((my_contacts mc
inner join job_current jc on mc.id = jc.contact_id)
inner join job_desired jd on mc.id = jd.contact_id)
inner join job_listings jl on jd.title = 'Web Developer')
where jd.title = jl.title and jd.salary_low > jc.salary and jd.salary_high <= jl.salary
and jd.years_exp <= ( ((((unix_timestamp(current_timestamp()) / 60) / 60) / 24) / 365) - ((((unix_timestamp(jc.start_date) / 60) / 60) / 24) / 365) );

select mc.id, mc.first_name, mc.last_name, jc.title, jc.salary, jc.start_date, jd.title as desired_prof, jl.salary as newJob_salary,
( ((((unix_timestamp(current_timestamp()) / 60) / 60) / 24) / 365) - ((((unix_timestamp(jc.start_date) / 60) / 60) / 24) / 365) ) as years_ex
from (((my_contacts mc
inner join job_current jc on mc.id = jc.contact_id)
inner join job_desired jd on mc.id = jd.contact_id)
inner join job_listings jl on jd.title = 'Web Designer')
where jd.title = jl.title and  jd.salary_low > jc.salary and jd.salary_high <= jl.salary
and jd.years_exp <= ( ((((unix_timestamp(current_timestamp()) / 60) / 60) / 24) / 365) - ((((unix_timestamp(jc.start_date) / 60) / 60) / 24) / 365) );

select title from job_listings group by title order by title;

select mc.id, mc.first_name, mc.last_name, mc.phone, p.profession
from profession p
natural join my_contacts mc
where p.profession in ('Artist', 'Bookshop Owner', 'Comedian', 'Computer Programmer', 'Cruise Ship Captain', 'Manager'); #IN is the exception. Most of the time subqueries need to return a single value to work.
#where p.profession in (select profession from profession);

select mc.first_name, mc.last_name, mc.id, mc.prof_id, p.profession, mc.zip_code, zip.city, zip.zip_code
from ((my_contacts mc
natural join zip_code zip)
inner join profession p on mc.prof_id = p.id)
where zip.city in (select city from zip_code where zip_code > 5);

select id, first_name, last_name, prof_id
from my_contacts
where prof_id = (select id from profession where id = 10);

select id, first_name, last_name
from my_contacts
where zip_code = (select zip_code from zip_code where city = 'Austin' and state = 'TX');

select mc.first_name, mc.last_name, jc.title, jc.salary
from my_contacts mc
natural join job_current jc
where mc.id = jc.contact_id and jc.salary = 
(select max(jc.salary) from job_current jc);

select mc.first_name, mc.last_name, (select title from job_current where mc.id = job_current.contact_id) as profession, 
(select salary from job_current where mc.id = job_current.contact_id) as salary
from my_contacts mc;

select *
from job_current jc
join my_contacts mc
where jc.contact_id = mc.id and mc.email = 'alexangel@yahoo.com';

#Subquery with a natural join
select mc.id, mc.first_name, mc.last_name, jc.salary, jc.title as profession
from my_contacts mc
natural join job_current jc
where jc.contact_id = mc.id and jc.salary > (select jc.salary from my_contacts mc
natural join job_current jc
where jc.contact_id = mc.id and mc.email = 'alexangel@yahoo.com')
order by salary;

select mc.id, mc.first_name, mc.last_name, mc.prof_id, p.id, p.profession, it.int_id, it.interest, s.seeking_id, s.seeking
from my_contacts mc
join profession p on mc.prof_id = p.id
join interests it on (select interest_id from contact_interest ct where mc.id = ct.contact_id)
join seeking s 
where mc.prof_id = p.id and mc.first_name = 'Freddy';

select avg(cur.salary) as AVG_SALRY
from job_current cur
where cur.title = 'Web Developer';

select avg(cur.salary) as AVG_SALRY
from job_current cur;

select mc.id, mc.first_name, mc.last_name, jc.title as profession, jc.salary
from my_contacts mc
inner join job_current jc on mc.id = jc.contact_id
where jc.title like 'web developer';

select mc.id, mc.first_name, mc.last_name, jc.title, jc.salary as profession, jc.salary - (select avg(salary) from job_current where title = 'Web Developer') as avg_salary
from my_contacts mc
inner join job_current jc on mc.id = jc.contact_id
where jc.title = 'Web Developer'
group by mc.id, mc.first_name, mc.last_name, jc.salary;

select mc.id, mc.first_name, mc.last_name, jc.title as profession, jc.salary
from job_current jc
inner join my_contacts mc on jc.contact_id = mc.id
where jc.title not in (select title from job_listings)
order by id;

select distinct title
from job_current
where salary > (select min(salary) from job_listings);

select mc.first_name, mc.last_name, jc.salary
from my_contacts mc
inner join job_current jc on mc.id = jc.contact_id
where jc.salary > (select avg(salary) from job_current);

select mc.first_name, mc.last_name, jc.title, jl.zip
from my_contacts mc 
inner join job_current jc on jc.title = 'Web Designer'
inner join job_listings jl on mc.id = jc.contact_id
where jl.zip in (select city from zip_code where city = 'Moscow');
select mc.first_name, mc.last_name, mc.phone
from my_contacts mc
inner join job_current jc on mc.id = jc.contact_id
inner join zip_code zip on mc.zip_code = zip.zip_code
where jc.title = 'Web Designer' and zip.city in (select zip from job_listings where title = 'Web Designer');

select last_name, first_name, zip_code #Don't work
from my_contacts 
where zip_code in (select zip_code from my_contacts mc
natural join job_current jc 
where jc.salary = (select max(salary) from job_current));

select mc.last_name, mc.first_name, mc.zip_code
from my_contacts mc
join job_current jc on mc.zip_code in (select zip_code from my_contacts where id = jc.contact_id)
where jc.salary = (select max(salary) from job_current);

select mc.first_name, mc.last_name
from my_contacts mc
where 3 = (select count(*) from contact_interest it where mc.id = it.contact_id);

select mc.id id, mc.first_name firstname, mc.last_name lastname, mc.email email
from my_contacts mc
where not exists (select * from job_listings jl		#correlated subquery
where mc.id = jl.job_id);

select mc.id id, mc.first_name firstname, mc.last_name lastname, mc.email email	#all of recruit have interests
from my_contacts mc
where exists (select * from contact_interest ci where mc.id = ci.contact_id);		#correlated subquery

select mc.id, mc.first_name, mc.last_name, mc.email	#shit
from my_contacts mc
where exists (select * from contact_interest ci where mc.id = ci.contact_id) and not exists (select * from job_desired jd where mc.id = jd.contact_id);	#correlated subquery

select * from job_desired
where exists (select * from profession);		#uncorrelated subquery

select mc.id, mc.first_name, mc.last_name, ci.contact_id, ci.interest_id
from my_contacts mc
right outer join contact_interest ci on mc.id = ci.contact_id
order by interest_id;

select mc.id, mc.first_name, mc.last_name, jd.contact_id, jd.title
from my_contacts mc	#left table
LEFT OUTER JOIN job_desired jd on mc.id = jd.contact_id
order by id;

select mc.id, mc.first_name, mc.last_name, jd.contact_id, jd.title		#same query as upper
from my_contacts mc	#right table
RIGHT OUTER JOIN job_desired jd on mc.id = jd.contact_id		#FULL OUTER JOIN (don't support mysql rdbms)
order by id;

#Self-join
select mc1.first_name, mc2.last_name, mc1.id, mc2.id
from my_contacts mc1
inner join my_contacts mc2	#SELF JOIN	#if id = id in the table - SELF-REFERENCING foreign key
where mc1.id = mc2.id;

#Self-referencing foreign key with subquerie
select mc1.first_name, (select mc2.last_name from my_contacts mc2 where mc1.id = mc2.id) as last_name, mc1.id as mc1_id 
from my_contacts mc1;

select title from job_current
UNION
select title from job_desired	
UNION
select title from job_listings
order by title;

SELECT title FROM job_current		#UNION ALL works exactly the same way as UNION, except it returns all the values from the columns
UNION ALL
SELECT title FROM job_desired
UNION ALL
SELECT title FROM job_listings ORDER BY title;

CREATE TABLE my_union_table AS
SELECT title FROM job_current
UNION
SELECT title FROM job_desired
UNION
SELECT title FROM job_listings;
SELECT * FROM my_union_table ORDER BY title;

#Subqueries
#Can be used with UPDATE, INSERT, and DELETE.
select mc.id, mc.first_name, mc.last_name, jc.title as profession, jc.salary
from job_current jc
inner join my_contacts mc on jc.contact_id = mc.id
where jc.title in (select title from job_listings)
order by id;

#Here’s the WHERE clause with the subquery rewritten as an INNER JOIN:
select mc.id, mc.first_name, mc.last_name, jc.title as profession, jc.salary
from job_current jc
inner join my_contacts mc on jc.contact_id = mc.id
inner join job_listings jl on jc.title = jl.title
order by id;

select title from job_listings where salary = (select max(salary) from job_listings);
select title from job_listings order by salary desc limit 1;	#same result as above, but we don't use a subquery

select mc.first_name, mc.last_name, jc.contact_id, jc.title, jc.salary
from my_contacts mc 
natural join job_current jc 
where mc.id = jc.contact_id and jc.salary > (select avg(salary) from job_current);

select mc.id, mc.last_name, p.id, p.profession
from my_contacts mc
natural join profession p;		#NATURAL JOIN returns only just match columns by column name

select count(*) as counts from my_contacts where gender = 'F' union select count(*) from my_contacts where gender = 'M'
union select count(*) as Total from my_contacts;
select gender from my_contacts where gender <> 'M' and gender <> 'F';













