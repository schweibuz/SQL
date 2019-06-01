DROP TABLE job_desired;

create table job_desired(
contact_id int(11) not null primary key,
title varchar(55) default null,
salary_low int default null,
salary_high int default null,
available varchar(55) default null,
years_exp int(11)
);

INSERT INTO job_desired (contact_id, title, salary_low, salary_high, available, years_exp) values(9, 'Web Developer', 95000, 105000, 'true', 5);
insert into job_desired (contact_id, title, salary_low, salary_high, available, years_exp) values (10, 'Web Designer', 70000, 100000, 'true', 3); 

SELECT * FROM job_desired;



#---------------------#---------------------#---------------------#---------------------#---------------------#---------------------
DROP TABLE job_listings;

create table job_listings (
job_id int(11) not null primary key auto_increment,
title varchar(55) default null,
salary int default null,
zip varchar(55) default null,
description varchar(1111) default null
);

insert into job_listings (title, salary, zip, description)
values ('Web Developer', 105000, 'CA', 'Looking for Web Developer with first rate HTML & CSS chops to work with our interaction and visual design teams. 
This is a tremendous opportunity for someone who’s meticulous about web standards to shine with a highly-visible company. Work with an amazingly influential 
company operated by smart people who love what they do.') ;
insert into job_listings (title, salary, zip, description) values ('Cook', 95000, 'TX', 'Looking for Cook with expirience');
insert into job_listings (title, salary, zip, description) values ('Hairdresser', 90000, 'NJ', 'Looking for Hairdresser with cute hair');
insert into job_listings (title, salary, zip, description) values ('Waiter', 80000, 'NY', 'Looking for Waiter');
insert into job_listings (title, salary, zip, description) values ('Web Designer', 101000, 'NJ', 'Web Design for amazing influential company');
insert into job_listings (title, salary, zip, description) values ('Technical Writer', 73500, 'NY', 'Write for future start-up');

SELECT * FROM job_listings;

update job_listings set zip = 'Moscow' where title = 'Web Designer';



