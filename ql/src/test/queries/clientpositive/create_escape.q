--! qt:dataset:src
CREATE TABLE table1_n6 (a STRING, b STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ESCAPED BY '\\'
STORED AS TEXTFILE;

DESCRIBE table1_n6;
DESCRIBE EXTENDED table1_n6;

INSERT OVERWRITE TABLE table1_n6 SELECT key, '\\\t\\' FROM src WHERE key = 86;

SELECT * FROM table1_n6;
