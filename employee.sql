--liquibase formatted sql
--changeset devopsadmin:2
create table employee ( 
id int primary key,
name varchar(255),
address varchar(255)
);
--rollback drop table employee;
