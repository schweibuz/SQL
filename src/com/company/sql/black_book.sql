create table black_book (date_name varchar(20) not null, rating varchar(20));

desc black_book;

insert into black_book values ('Alex', 'innovative');
insert into black_book values ('James', 'boring');
insert into black_book values ('Ian', 'fabulous');
insert into black_book values ('Boris', 'ho hum');
insert into black_book values ('Melvin', 'plebian');
insert into black_book values ('Eric', 'pathetic');
insert into black_book values ('Anthony', 'delightful');
insert into black_book values ('Sammy', 'pretty good');

select * from black_book;

select date_name from black_book where rating = 'innovative' or rating = 'fabulous';

select date_name from black_book where rating not in ('innovative', 'fabulous', 'plebian');

SELECT date_name from black_book WHERE NOT date_name LIKE 'A%' AND NOT date_name LIKE 'B%';

select * from black_book where date_name not like 'A%' and date_name not like 'B%';

select * from black_book where date_name not between 'A' and 'B';


select * from black_book where rating not in ('boring', 'plebian', 'fabulous');

select * from black_book where date_name not like 'A%' and date_name not like 'B%';

select * from black_book where  date_name not like 'A%' and date_name not like 'B%';

select * from black_book where date_name not between 'A%' and 'C%';






























































