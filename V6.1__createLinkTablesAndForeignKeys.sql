create table MessageFiles(
  message_id int NOT NULL,
  file_id int NOT NULL,
  foreign key (message_id) references message (id),
  foreign key (file_id) references file (id)
);

create table StreamParticipants(
  stream_id int,
  user_id int,
  foreign key (stream_id) references stream (id),
  foreign key (user_id) references usr (id)
);

create table CallStreams(
  call_id int,
  stream_id int,
  foreign key (call_id) references calls (id),
  foreign key (stream_id) references stream (id)
);

create table ChannelUsers(
  channel_id int NOT NULL,
  user_id int NOT NULL,
  foreign key (channel_id) references channel (id),
  foreign key (user_id) references usr (id)
);

create table ConnectedDevices(
  device_id int NOT NULL,
  user_id int NOT NULL,
  foreign key (device_id) references device (id),
  foreign key (user_id) references usr (id)
);

create table FriendRequests(
  sender_id int NOT NULL,
  recipient_id int NOT NULL,
  foreign key (sender_id) references usr (id),
  foreign key (recipient_id) references usr (id),
  request_date timestamp NOT NULL,
  request_accepted boolean
);

create table ChannelBots(
  bot_id int,
  user_id int,
  channel_id int,
  added_date timestamp,
  added_user int,
  foreign key (user_id) references usr (id),
  foreign key (bot_id) references bot (id),
  foreign key (channel_id) references channel (id),
  foreign key (added_user) references usr (id)
);

create table CallParticipants(
  user_id int,
  call_id int,
  foreign key (user_id) references usr (id),
  foreign key (call_id) references calls (id)
);

create table ChannelRoles(
  added_user int NOT NULL,
  added_date timestamp NOT NULL,
  role_id int NOT NULL,
  user_id int NOT NULL,
  channel_id int NOT NULL,
  foreign key (user_id) references usr (id),
  foreign key (role_id) references role (id),
  foreign key (channel_id) references channel (id),
  foreign key (added_user) references usr (id)
);

create table ChannelStickers (
  channel_id int NOT NULL,
  sticker_id int NOT NULL,
  foreign key (channel_id) references channel (id),
  foreign key (sticker_id) references sticker (id)
);

create table ChannelMediaChannels(
  added_user int,
  added_date timestamp,
  channel_id int,
  foreign key (channel_id) references channel (id),
  foreign key (added_user) references usr (id)
);


create table VoiceChannelParticipants(
  voiceChannel_id int,
  user_id int,
  foreign key (voiceChannel_id) references voicechannel (id),
  foreign key (user_id) references usr (id)
);