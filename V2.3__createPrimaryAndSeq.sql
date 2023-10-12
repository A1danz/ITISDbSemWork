alter table VoiceChannel add primary key(id);

create sequence VoiceChannel_seq;

alter table VoiceChannel alter column id set default nextval('VoiceChannel_seq');

--

alter table File add primary key(id);

create sequence File_seq;

alter table File alter column id set default nextval('File_seq');

--

alter table Calls add primary key(id);

create sequence Calls_seq;

alter table Calls alter column id set default nextval('Calls_seq');

--

alter table Stream add primary key(id);

create sequence Stream_seq;

alter table Stream alter column id set default nextval('Stream_seq');

--
