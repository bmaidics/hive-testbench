create database if not exists ${DB};
use ${DB};

drop table if exists nation;

create table nation
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select distinct * from ${SOURCE}.nation;
