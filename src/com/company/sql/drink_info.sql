CREATE TABLE `drink_info` (
  `drink_name` varchar(16) default NULL,
  `cost` decimal(4,2) default NULL,
  `carbs` decimal(4,2) default NULL,
  `color` varchar(20) default NULL,
  `ice` char(1) default NULL,
  `calories` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO drink_info VALUES ('Blackthorn', 3, 8.4, 'yellow', 'Y', 33),('Blue Moon', 2.5, 3.2, 'blue', 'Y', 12),
('Oh My Gosh', 3.5, 8.6, 'orange', 'Y', 35),('Lime Fizz', 2.5, 5.4, 'green', 'Y', 24),
('Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 171),('Hot Gold', 3.2, 32.1, 'orange', 'N', 135),
('Lone Tree', 3.6, 4.2, 'red', 'Y', 17),('Greyhound', 4, 14, 'yellow', 'Y', 50),
('Indian Summer', 2.8, 7.2, 'brown', 'N', 30),('Bull Frog', 2.6, 21.5, 'tan', 'Y', 80),
('Soda and It', 3.8, 4.7, 'red', 'N', 19),('Slim Shady', 4.35, NULL, 'clear', 'Y', NULL),
('White Russian', 6, 20, 'white', 'Y', 200), ('Black Russian', 7, 8, 'black', 'Y', 165);
use gregs_list;
drop table drink_info;
use gregs_list;

select * from drink_info;

select drink_name from drink_info where cost >= 3.5 and calories < 50;

select * from drink_info where ice = 'y' and color = 'yellow' and calories >= 33;

select * from drink_info where ice = 'y' and carbs <= 4;

select * from drink_info where calories >= 80;

select drink_name from drink_info where drink_name >= 'A' and drink_name < 'C';

SELECT drink_name FROM drink_info WHERE calories IS NULL;

select * from drink_info where calories between 30 and 80;

select * from drink_info where drink_name like '%z';

select * from drink_info where not carbs between 3 and 5;

select drink_name from drink_info where ice not in ('Y');

select drink_name from drink_info where calories > 20 and calories is not null;

SELECT * FROM drink_info WHERE calories > 0;

SELECT * FROM drink_info WHERE carbs < 3 or carbs > 5;

delete from drink_info where drink_name = 'kiss on the lips';

insert into drink_info values ('Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 170);

select * from drink_info where color = 'yellow';

delete from drink_info where color = 'yellow';

insert into drink_info values ('Blackthorn', 3, 8.4, 'gold', 'Y', 33),('Greyhound', 4, 14, 'gold', 'Y', 50);

select * from drink_info where color = 'gold';

select * from drink_info where cost = '4.5';
select * from drink_info where cost = '3.5';
delete from drink_info where cost = '2.5' or cost = '3.5';

insert into drink_info values ('Oh My Gosh', 4.5, 8.6, 'orange', 'Y', 35),
('Lime Fizz', 3.5, 5.4, 'green', 'Y', 24),('Blue Moon', 3.5, 3.2, 'blue', 'Y', 12);