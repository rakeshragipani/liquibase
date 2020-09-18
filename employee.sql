--liquibase formatted sql
--changeset devopsadmin:3
alter table employee add column phonenummber int;
--rollback alter table employee drop column phonenummber;
--validCheckSum: 8:85bdca82ea9b3aa285fbeed98c5bf861
