create database if not exists ${DB};
use ${DB};

drop table if exists item;

create table item
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select * from ${SOURCE}.item
CLUSTER BY i_item_sk
;
