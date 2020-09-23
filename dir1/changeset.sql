--liquibase formatted sql
--changeset devopsadmin:1
create table develop1 ( 
id int primary key,
name varchar(255),
address varchar(255)
);
--rollback drop table develop1;
--changeset devopsadmin:2
alter table develop1 add column phonenummber int;
--rollback alter table develop1 drop column phonenummber;
--validCheckSum: 8:f709b6c46aeb1a461456f58550c6221d



