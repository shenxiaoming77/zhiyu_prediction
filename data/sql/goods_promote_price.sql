drop table if exists goods_promote_price;
create table  if not exists goods_promote_price
(
goods_id	string,
data_date	string,
shop_price	float,
promote_price	float,
promote_start_time	string,
promote_end_time	string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';

ALTER TABLE goods_promote_price SET SERDEPROPERTIES('serialization.null.format' = '');