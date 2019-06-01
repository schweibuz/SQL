CREATE TABLE cookie_sales (
  ID int(11) NOT NULL auto_increment,
  first_name varchar(20) NOT NULL,
  sales decimal(4,2) NOT NULL,
  sale_date date NOT NULL,
  PRIMARY KEY  (ID)
);

use gregs_list;

INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('1','Lindsey',32.02,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('2','Nicole',26.53,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('3','Britney',11.25,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('4','Ashley',18.96,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('5','Lindsey',9.16,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('6','Nicole',1.52,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('7','Britney',43.21,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('8','Ashley',8.05,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('9','Lindsey',17.62,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('10','Nicole',24.19,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('11','Britney',3.40,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('12','Ashley',15.21,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('13','Lindsey',0.00,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('14','Nicole',31.99,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('15','Britney',2.58,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('16','Ashley',0.00,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('17','Lindsey',2.34,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('18','Nicole',13.44,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('19','Britney',8.78,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('20','Ashley',26.82,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('21','Lindsey',3.71,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('22','Nicole',0.56,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('23','Britney',34.19,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('24','Ashley',7.77,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('25','Lindsey',16.23,'2007-03-06');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('26','Nicole',0.00,'2007-03-06');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('27','Britney',4.50,'2007-03-06');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('28','Ashley',19.22,'2007-03-06');

select first_name, sales, sale_date from cookie_sales order by first_name, sales desc;

select sum(sales) from cookie_sales where first_name = 'Nicole';

select first_name, sum(sales) from cookie_sales order by sales desc;

select first_name, sum(sales) from cookie_sales group by first_name order by sum(sales) desc;

select first_name, avg(sales) from cookie_sales group by first_name;

select first_name, max(sales) from cookie_sales group by first_name;

select first_name, min(sales) from cookie_sales group by first_name;

select count(sale_date) from cookie_sales;

select first_name, count(sale_date) from cookie_sales group by first_name;

select distinct sale_date from cookie_sales order by sale_date;

select count(distinct sale_date) from cookie_sales;

select count(distinct sale_date), first_name from cookie_sales where sales > 0 group by 
first_name order by count(sale_date) desc;

select first_name, sum(sales) from cookie_sales group by first_name order by sum(sales) desc limit 2;

select first_name, sum(sales) from cookie_sales group by first_name order by sum(sales) desc limit 1,1;



