
drop table if exists goodsdaily;
create table  if not exists goodsdaily
(
goods_id	string,
data_date	string,
goods_click	int,
cart_click	int,
favorites_click	int,
sales_uv	int,
onsale_days	int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';

ALTER TABLE goodsdaily SET SERDEPROPERTIES('serialization.null.format' = '');