--liquibase formatted sql
--changeset devopsadmin:1
create table master ( 
id int primary key,
name varchar(255),
address varchar(255)
);
--rollback drop table master;
