drop table if exists goods_sku_relation;
create table  if not exists goods_sku_relation
(
goods_id	string,
sku_id	string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';

ALTER TABLE goods_sku_relation SET SERDEPROPERTIES('serialization.null.format' = '');