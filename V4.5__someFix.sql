create sequence FileType_seq;

select
  nextval ('FileType_seq');

alter table FileType
alter column id
set default nextval ('FileType_seq');

ALTER TABLE Usr
DROP CONSTRAINT phone_number_check;

ALTER TABLE Usr
alter column phone_number type varchar(40);

ALTER table Usr add constraint phone_number_length CHECK (LENGTH (phone_number) >= 4);