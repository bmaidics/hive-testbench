create database if not exists ${DB};
use ${DB};

drop table if exists reason;

create table reason
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select * from ${SOURCE}.reason;
