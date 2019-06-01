create table simple_table (test_chars char null);

drop table simple_table;

insert into simple_table values (0);
insert into simple_table values (1);
insert into simple_table values (2);
insert into simple_table values (3);
insert into simple_table values ('A');
insert into simple_table values ('B');
insert into simple_table values ('C');
insert into simple_table values ('D');
insert into simple_table values ('a');
insert into simple_table values ('b');
insert into simple_table values ('c');
insert into simple_table values ('d');
insert into simple_table values ('!');
insert into simple_table values ('@');
insert into simple_table values ('#');
insert into simple_table values ('$');
insert into simple_table values ('%');
insert into simple_table values ('^');
insert into simple_table values ('&');
insert into simple_table values ('*');
insert into simple_table values ('(');
insert into simple_table values (')');
insert into simple_table values ('-');
insert into simple_table values ('_');
insert into simple_table values ('+');
insert into simple_table values ('=');
insert into simple_table values ('[');
insert into simple_table values (']');
insert into simple_table values ('{');
insert into simple_table values ('}');
insert into simple_table values (';');
insert into simple_table values (':');
insert into simple_table values ('\'');
insert into simple_table values ('"');
insert into simple_table values ('\\');
insert into simple_table values ('|');
insert into simple_table values ('`');
insert into simple_table values ('~');
insert into simple_table values (',');
insert into simple_table values ('.');
insert into simple_table values ('<');
insert into simple_table values ('>');
insert into simple_table values ('/');
insert into simple_table values ('?');
insert into simple_table values (' ');
insert into simple_table values (null);


delete from simple_table where test_chars = '0';

select * from simple_table order by test_chars;