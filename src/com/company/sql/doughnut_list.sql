
DROP TABLE doughnut_list;

CREATE TABLE doughnut_list (doughnut_name VARCHAR(10) NOT NULL,
doughnut_type VARCHAR(6) NOT NULL, doughnut_cost DEC(3,2) DEFAULT 1.00);

DESC doughnut_list;

INSERT INTO doughnut_list (doughnut_name, doughnut_type) VALUES ('potatoes', 'shoko');

SELECT * FROM doughnut_list;