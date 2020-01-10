create database if not exists ${DB};
use ${DB};

drop table if exists time_dim;

create table time_dim
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select * from ${SOURCE}.time_dim;
