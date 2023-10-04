create table Role (
  Name varchar,
  Description text,
  Avatar varchar
);

create table Channel (
  Id int,
  ServerName varchar,
  ServerMembers int,
  ServerChannels varchar,
  ServerAvatar varchar
);

create table Message (
  Id int,
  Text varchar,
  Attachments varchar,
  Sender varchar,
  TimeSent timestamp,
  ChannelId int
);

create table Activity (
  Id int,
  Name varchar,
  Genre varchar,
  Description text,
  WebAppLink varchar,
  Region varchar
);