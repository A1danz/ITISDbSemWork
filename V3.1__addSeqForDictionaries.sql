-- DeviceType sequence
create sequence DeviceType_seq;
select nextval('DeviceType_seq');
alter table DeviceType alter column id set default nextval('DeviceType_seq');


-- ClientType sequence
create sequence ClientType_seq;
select nextval('ClientType_seq');
alter table ClientType alter column id set default nextval('ClientType_seq');


-- EmojiCategory sequence
create sequence EmojiCategory_seq;
select nextval('EmojiCategory_seq');
alter table EmojiCategory alter column id set default nextval('EmojiCategory_seq');


-- Quality sequence
create sequence Quality_seq;
select nextval('Quality_seq');
alter table Quality alter column id set default nextval('Quality_seq');


-- FpsCount sequence
create sequence FpsCount_seq;
select nextval('FpsCount_seq');
alter table FpsCount alter column id set default nextval('FpsCount_seq');


-- ActivityGenre sequence
create sequence ActivityGenre_seq;
select nextval('ActivityGenre_seq');
alter table ActivityGenre alter column id set default nextval('ActivityGenre_seq');


-- RegionType sequence
create sequence RegionType_seq;
select nextval('RegionType_seq');
alter table RegionType alter column id set default nextval('RegionType_seq');