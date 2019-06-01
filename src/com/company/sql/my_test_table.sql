create table my_test_table(id int(10) not null auto_increment primary key, names varchar(30), address varchar(30), telephone varchar(30));

drop table my_test_table;

insert into my_test_table (id, names, address, telephone) values ('1', 'Fedya', 'BU', '+81235556677');
insert into my_test_table (id, names, address, telephone) values ('2', 'Petya Pot', 'LU', '+33213344556');
insert into my_test_table (id, names, address, telephone) values ('3', 'Medya', 'TU', '+21234434493');
insert into my_test_table (id, names, address, telephone) values ('4', 'Motya Mot', 'SU', '+32983128938');
insert into my_test_table (id, names, address, telephone) values ('5', 'Tatya', 'UU', '+32142334334');
insert into my_test_table (id, names, address, telephone) values ('6', 'Kot Udot', 'RU', '+71345313344');
insert into my_test_table (id, names, address, telephone) values ('7', 'Kotya', 'EU', '+92341234343');
insert into my_test_table (id, names, address, telephone) values ('8', 'Bitch', 'OO', '+56565656565');


use gregs_list;

select * from my_test_table order by names asc;

alter table my_test_table add column last_name varchar(20), add first_name varchar(20);
update my_test_table set last_name = 
case
when substring(names, 1, 4) = 'Kot' then substring_index(names, ' ', 1)
when substring(names, 1, 5) = 'Petya' then substring_index(names, ' ', 1)
when substring(names, 1, 5) = 'Motya' then substring_index(names, ' ', 1)
end;

select substring_index(names, ' ', -1) as LAST from my_test_table;

update my_test_table set names = trim(right(names, (length(names) - length(last_name) - 1))) where substring(last_name, 1, 5) = 'Kot';
update my_test_table set names = trim(right(names, (length(names) - length(last_name) - 1))) where substring(last_name, 1, 5) = 'Motya';
update my_test_table set names = trim(right(names, (length(names) - length(last_name) - 1))) where substring(last_name, 1, 5) = 'Petya';