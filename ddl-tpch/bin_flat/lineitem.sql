create database if not exists ${DB};
use ${DB};

drop table if exists lineitem;

create table lineitem
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select * from ${SOURCE}.lineitem 
cluster by L_SHIPDATE
;
