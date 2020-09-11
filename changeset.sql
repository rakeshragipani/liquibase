--liquibase formatted sql
--changeset devopsadmin:1
create table release ( 
id int primary key,
name varchar(255),
address varchar(255)
);
--rollback drop table release;
