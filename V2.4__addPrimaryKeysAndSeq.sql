alter table Friends
add column id integer;

alter table Friends add primary key (id);

create sequence Friends_seq;

select
  nextval ('Friends_seq');

alter table Friends
alter column id
set default nextval ('Friends_seq');

-- 
alter table Nitro
add column id integer;

alter table Nitro add primary key (id);

create sequence Nitro_seq;

select
  nextval ('Nitro_seq');

alter table Nitro
alter column id
set default nextval ('Nitro_seq');

-- 
alter table Device
add column id integer;

alter table Device add primary key (id);

create sequence Device_seq;

select
  nextval ('Device_seq');

alter table Device
alter column id
set default nextval ('Device_seq');