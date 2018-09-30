drop table if exists goodsale;
create table  if not exists goodsale
(
goods_id	string,
data_date	string,
sku_id	string,
goods_num	int,
goods_price	float,
orginal_shop_price	float
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';

ALTER TABLE goodsale SET SERDEPROPERTIES('serialization.null.format' = '');