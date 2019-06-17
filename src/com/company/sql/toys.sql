# Dump of table toys
# ------------------------------------------------------------

CREATE TABLE `toys` (
  `toy_id` int(11) default NULL,
  `toy` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

drop table toys;

INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('1','hula hoop');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('2','balsa glider');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('3','toy soldiers');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('4','harmonica');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('5','baseball cards');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('6','tinker toys');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('7','etch-a-sketch');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('8','slinky');

select * from toys order by toy_id;
delete from toys where toy = 'hula hoop';

select t.toy, b.boy from toys as t, boys as b order by boy;

select b1.boy, b2.boy from boys as b1 cross join boys as b2;

