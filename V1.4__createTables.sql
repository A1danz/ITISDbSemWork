create table Friends (
  first_user bigint,
  second_user bigint,
  added_date timestamp with time zone
);

create table Nitro (
  name varchar(40),
  avatar text,
  price int,
  started_date timestamp with time zone,
  ended_data timestamp with time zone
);

create table Device (
  name varchar(40),
  type varchar(40),
  type_client varchar(40),
  position text,
  time timestamp with time zone
);