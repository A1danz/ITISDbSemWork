alter table Usr add primary key(id);

create sequence Usr_seq;

select nextval('Usr_seq');

alter table Usr alter column id set default nextval('Usr_seq');

--

alter table Emoji add primary key(id);

create sequence Emoji_seq;

select nextval('Emoji_seq');

alter table Emoji alter column id set default nextval('Emoji_seq');

--

alter table TextChannel add primary key(id);

create sequence TextChannel_seq;

select nextval('TextChannel_seq');

alter table TextChannel alter column id set default nextval('TextChannel_seq');

--

alter table TextMessage add primary key(message_id);

create sequence TextMessage_seq;

select nextval('TextMessage_seq');

alter table TextMessage alter column message_id set default nextval('TextMessage_seq');