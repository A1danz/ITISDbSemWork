create table Sticker (
  id bigint,
  name varchar,
  author varchar,
  shortName varchar,
  file varchar
);

create table MediaChannel (
  id bigint,
  name varchar,
  description varchar,
  accessLevel varchar
);

create table Bot (
  id bigint,
  name varchar,
  avatar varchar,
  description varchar,
  link varchar
);

create table PersonalChannel (channelId bigint);