# CocoaMySQL dump
# Version 0.7b5
# http://cocoamysql.sourceforge.net
#
# Host: localhost (MySQL 5.0.37)
# Database: ch9
# Generation Time: 2007-09-07 11:09:52 -0400
# ************************************************************

# Dump of table projekts
# ------------------------------------------------------------

CREATE TABLE `projekts` (
  `number` int(11) NOT NULL default '0',
  `descriptionofproj` varchar(50) default NULL,
  `contractoronjob` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('1','outside house painting','Murphy');
INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('2','kitchen remodel','Valdez');
INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('3','wood floor installation','Keller');
INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('4','roofing','Jackson');

alter table projekts rename to project_list;

desc project_list;

select * from project_list;


alter table project_list change column number proj_id int not null AUTO_INCREMENT, add primary key(proj_id);

alter table project_list 
change column descriptionofproj proj_desc varchar(100),
change column contractoronjob con_name varchar(30);

alter table project_list
modify column proj_desc varchar(120);

alter table project_list add column con_phone varchar(10),
add column start_date date,
add column est_cost decimal(7,2);

alter table project_list drop column start_date;