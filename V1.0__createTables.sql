create table Usr (
  id bigint,
  login varchar(40),
  password varchar(40),
  e_mail varchar(40),
  phone_number bigint,
  name varchar(40),
  avatar varchar(40),
  nitro_access boolean,
  registration_date timestamp with time zone,
  super_user boolean,
  region varchar(40)
);

create table Emoji (
  id bigint,
  type varchar(40),
  category varchar(40),
  name varchar(40),
  abbreviation varchar(40),
  description varchar(40)
);

create table TextChannel (
  id bigint,
  participants varchar,
  max_participants bigint,
  unseen_messages bigint
);

create table TextMessage (
  message_id bigint,
  user_id bigint,
  message_text text,
  time_of_sending timestamp with time zone,
  edited_message boolean
);