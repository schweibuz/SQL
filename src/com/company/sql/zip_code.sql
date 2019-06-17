DROP TABLE zip_code;

create table zip_code (
zip_code int(10) not null auto_increment primary key,
city varchar(50) default null,
state varchar(5) default null
);

insert into zip_code (city, state) select distinct city, state from my_contacts;
insert into zip_code (city, state) values ('Moscow', 'USSR');

SELECT * FROM zip_code;


#---------------#---------------#---------------#---------------#---------------#---------------#---------------

DROP TABLE status;

create table status (
status_id int(11) not null auto_increment primary key,
status varchar(50) default null
);

insert into status(status) select distinct status from my_contacts;

SELECT * FROM status;





























































