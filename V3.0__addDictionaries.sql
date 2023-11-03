-- device dictionaries
create table DeviceType(
    id bigint primary key,
    name varchar(40)
);

create table ClientType(
    id bigint primary key,
    name varchar(40)
);


-- emoji dictionary
create table EmojiCategory(
    id bigint primary key,
    name varchar(40)
);


-- file dictionary
create table FileType(
    id bigint primary key,
    name varchar(40)
);


-- stream dictionary
create table Quality(
    id bigint primary key,
    quality varchar(40)
);

create table FpsCount(
    id bigint primary key,
    fps varchar(4)
);


-- activity dictionary
create table ActivityGenre(
    id bigint primary key,
    name varchar(40)
);


-- region dictionary
create table RegionType(
    id bigint primary key,
    name varchar(40)
);  


