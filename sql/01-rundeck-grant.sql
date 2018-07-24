alter profile default limit PASSWORD_LIFE_TIME unlimited;
create tablespace rundeck datafile 'rddata' size 1G autoextend on next 100M maxsize unlimited;
create user rundeck identified by "RUNDECK_PASS" default tablespace rundeck temporary tablespace temp;
alter user rundeck quota unlimited on rundeck;
grant create session to rundeck;
grant create sequence to rundeck;
grant create table to rundeck;