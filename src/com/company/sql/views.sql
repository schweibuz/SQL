CREATE VIEW web_designers AS
select mc.first_name, mc.last_name, mc.phone, mc.email
from my_contacts mc
inner join profession p on mc.prof_id = p.id
where p.profession = (select title from job_desired where title = 'Web Designer');

drop view web_designers;

CREATE VIEW tech_writer_jobs AS
select job_id, title, salary, zip
from job_listings
where title = 'Technical Writer';

select * from web_designers;

SELECT * FROM
(SELECT mc.first_name, mc.last_name, mc.phone, mc.email		#Here’s what we used in our view.
FROM my_contacts mc
inner JOIN job_desired jd on mc.id = jd.contact_id
WHERE jd.title = 'Web Designer') AS web_designers;		#We’re giving our subquery an alias so that the query treats it as a table.

create view job_raises as
select mc.first_name, mc.last_name, mc.phone, mc.email, jc.title as curr_job, jc.salary, jd.title as desir_job, jd.salary_low, jd.salary_low - jc.salary as raise
from my_contacts mc
inner join job_current jc on mc.id = jc.contact_id
inner join job_desired jd on mc.id = jd.contact_id;

select * from job_raises order by last_name;
drop view job_raises;

create view gender_enter as
select gender from my_contacts 
where gender = 'M' or gender = 'F' with CHECK OPTION;

select * from gender_enter;
drop view gender_enter;

show TABLES;



create view web_designer as select mc.first_name, mc.last_name, mc.phone, mc.email 
from my_contacts mc natural join job_desired jd 
where title = 'Web Designer';

create view tech_writer_jobs as select title, salary, description, zip
from job_listings
where title = 'Technical Writer';

select * from web_designer;

SELECT * FROM	#our view
(SELECT mc.first_name, mc.last_name, mc.phone, mc.email
FROM my_contacts mc
inner JOIN job_desired jd on mc.contact_id = jd.contact_id
WHERE jd.title = 'Web Designer') AS web_designers;












