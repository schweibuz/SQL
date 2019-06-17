# Dump of table boys
# ------------------------------------------------------------

CREATE TABLE `boys` (
  `boy_id` int(11) default NULL,
  `boy` varchar(20) default NULL,
  `toy_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('1','Davey','3');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('2','Bobby','5');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('3','Beaver','2');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('4','Richie','1');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('6','Johnny','4');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('5','Billy','2');

select b.boy, t.toy from boys as b, toys as t order by boy;

select boys.boy, toys.toy from boys inner join toys group by boy;


select * from toys;
select * from boys;

select t.toy, b.boy from toys as t cross join boys as b;

select boys.boy, toys.toy from boys 
INNER JOIN toys 
ON boys.toy_id = toys.toy_id;
















