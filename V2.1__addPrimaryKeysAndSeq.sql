-- Role table

alter table Role add column id integer;
alter table Role add primary key(id);

create sequence Role_seq;

select nextval('Role_seq');

alter table Role alter column id set default nextval('Role_seq');


-- Channel table

alter table Channel add primary key(id);

create sequence Channel_seq;

select nextval('Channel_seq');

alter table Channel alter column id set default nextval('Channel_seq');

-- Message table

alter table Message add primary key(id);

create sequence Message_seq;

select nextval('Message_seq');

alter table Message alter column id set default nextval('Message_seq');

-- Activity table 

alter table Activity add primary key(id);

create sequence Activity_seq;

select nextval('Activity_seq');

alter table Activity alter column id set default nextval('Activity_seq');