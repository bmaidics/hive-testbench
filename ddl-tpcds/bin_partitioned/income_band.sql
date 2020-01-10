create database if not exists ${DB};
use ${DB};

drop table if exists income_band;

create table income_band
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select * from ${SOURCE}.income_band;
