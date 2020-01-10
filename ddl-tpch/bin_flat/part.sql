create database if not exists ${DB};
use ${DB};

drop table if exists part;

create table part
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select * from ${SOURCE}.part
cluster by p_brand
;
