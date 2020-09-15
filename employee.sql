--liquibase formatted sql
--changeset devopsadmin:2
alter table employee ( 
id int primary key,
name varchar(255),
address varchar(255),
phonenumber int
);
--rollback drop table employee;
