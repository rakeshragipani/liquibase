--liquibase formatted sql
--changeset devopsadmin:2
create table develop1 ( 
id int primary key,
name varchar(255),
address varchar(255)
);
--rollback drop table develop1;

alter table develop1 add column phonenummber int;
--rollback alter table develop1 drop column phonenummber;
