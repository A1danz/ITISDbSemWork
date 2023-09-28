CREATE TABLE Role (
  Name varchar,
  Description text,
  Avatar varchar,
)

CREATE TABLE Channel (
    Id int,
    ServerName varchar,
    ServerMembers int,
    ServerChannels varchar,
    ServerAvatar varchar
);

CREATE TABLE Message (
    Id int,
    Text varchar,
    Attachments varchar,
    Sender varchar,
    TimeSent timestamp,
    ChannelId int
);

CREATE TABLE Activity (
    Id int,
    Name varchar,
    Genre varchar,
    Description text,
    WebAppLink varchar,
    Region varchar
);