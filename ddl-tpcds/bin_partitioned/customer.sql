create database if not exists ${DB};
use ${DB};

drop table if exists customer;

create table customer
stored as ${FILE}  TBLPROPERTIES ('transactional'='true',   'transactional_properties'='insert_only')
as select * from ${SOURCE}.customer
CLUSTER BY c_customer_sk
;
