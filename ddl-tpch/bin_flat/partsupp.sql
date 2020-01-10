create database if not exists ${DB};
use ${DB};

drop table if exists partsupp;

create table partsupp
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select * from ${SOURCE}.partsupp
cluster by PS_SUPPKEY
;
