drop table if exists goodsinfo;
create table  if not exists goodsinfo
(
goods_id	string,
cat_level1_id	string,
cat_level2_id	string,
cat_level3_id	string,
cat_level4_id	string,
cat_level5_id	string,
cat_level6_id	string,
cat_level7_id	string,
goods_season	string,
brand_id string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';

ALTER TABLE goodsinfo SET SERDEPROPERTIES('serialization.null.format' = '');