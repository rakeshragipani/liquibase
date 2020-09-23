--liquibase formatted sql
--changeset devopsadmin:1
alter table develop1 add column phonenummber int;
--rollback alter table develop1 drop column phonenummber;
--validCheckSum: 8:f709b6c46aeb1a461456f58550c6221d



