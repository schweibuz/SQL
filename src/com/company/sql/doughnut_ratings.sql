CREATE TABLE `doughnut_ratings` (
  `location` varchar(50) default NULL,
  `time` time default NULL,
  `date` date default NULL,
  `type` varchar(50) default NULL,
  `rating` tinyint(4) default NULL,
  `comments` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Krispy King','08:50:00','2007-09-27','plain glazed','10','almost perfect');
INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Duncan\\\'s Donuts','08:59:00','2007-08-25',NULL,'6','greasy');
INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Starbuzz Coffee','07:35:00','2007-05-24','cinnamon cake','5','stale, but tasty');
INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Duncan\\\'s Donuts','07:03:00','2007-04-26','jelly','7','not enough jelly');

select * from doughnut_ratings;

SELECT location, rating FROM doughnut_ratings WHERE type = 'plain glazed';

SELECT location, rating FROM doughnut_ratings WHERE rating = 10;

SELECT location, rating FROM doughnut_ratings WHERE type = 'plain glazed' AND rating = 10;

select * from doughnut_ratings WHERE location = 'Krispy King' AND rating >= 3;

select type from doughnut_ratings WHERE location = 'Krispy King' AND rating <> 6;

select type from doughnut_ratings WHERE location = 'Snappy Bagel' OR rating = 6;

delete from doughnut_ratings where location = 'Krispy King' or rating >= 2;