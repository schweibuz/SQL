CREATE TABLE `your_table` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` varchar(20) default NULL,
  `last_name` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

INSERT INTO `your_table` (`id`,`first_name`,`last_name`) VALUES ('1','Marcia','Brady');
INSERT INTO `your_table` (`id`,`first_name`,`last_name`) VALUES ('2','Bobby','Brady');
INSERT INTO `your_table` (`id`,`first_name`,`last_name`) VALUES ('3','Cindy','Brady');
INSERT INTO `your_table` (`id`,`first_name`,`last_name`) VALUES ('99','Peter','Brady');