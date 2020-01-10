create database if not exists ${DB};
use ${DB};

drop table if exists orders;

create table orders
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select * from ${SOURCE}.orders
cluster by o_orderdate
;
