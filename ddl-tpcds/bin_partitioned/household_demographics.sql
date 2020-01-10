create database if not exists ${DB};
use ${DB};

drop table if exists household_demographics;

create table household_demographics
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select * from ${SOURCE}.household_demographics;
