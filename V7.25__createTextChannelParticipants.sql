create table TextChannelParticipants(
  textChannel_id int NOT NULL,
  user_id int NOT NULL,
  foreign key (textChannel_id) references textchannel (id),
  foreign key (user_id) references usr (id)
);