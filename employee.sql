--liquibase formatted sql
--changeset devopsadmin:3
alter table employee add column phonenummber int;
--rollback drop table employee;
