drop table if exists marketing;
create table  if not exists marketing
(
data_date string,
marketing   string,
plan string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';

ALTER TABLE marketing SET SERDEPROPERTIES('serialization.null.format' = '');