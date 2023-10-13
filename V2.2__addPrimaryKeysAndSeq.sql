/* Sticker table */
alter table Sticker add primary key(id);

create sequence Sticker_seq;

select nextval('Sticker_seq');

alter table Sticker alter column id set default nextval('Sticker_seq');

/* Media channel table */
alter table MediaChannel add primary key(id);

create sequence MediaChannel_seq;

select nextval('MediaChannel_seq');

alter table MediaChannel alter column id set default nextval('MediaChannel_seq');

/* Bot table */
alter table Bot add primary key(id);

create sequence Bot_seq;

select nextval('Bot_seq');

alter table Bot alter column id set default nextval('Bot_seq');

/* PersonalChannel*/
alter table PersonalChannel add primary key(channelId);

create sequence PersonalChannel_seq;

select nextval('PersonalChannel_seq');

alter table PersonalChannel alter column channelId set default nextval('PersonalChannel_seq');