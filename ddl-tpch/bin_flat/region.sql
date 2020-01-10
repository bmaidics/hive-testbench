create database if not exists ${DB};
use ${DB};

drop table if exists region;

create table region
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select distinct * from ${SOURCE}.region;
