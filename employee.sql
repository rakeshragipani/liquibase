--liquibase formatted sql
--changeset devopsadmin:3
alter table employee add column phonenummber int;
--rollback alter table employee drop column phonenummber;
