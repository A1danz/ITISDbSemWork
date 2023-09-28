create table VoiceChannel (
    id BIGINT,
    participants VARCHAR,
    maxPartipicants INT
);

create table File (
    id BIGINT,
    fileType VARCHAR,
    addDate TIMESTAMP,
    author BIGINT,
    link VARCHAR,
    weightKb INT,
    fileName VARCHAR
);

create table Calls (
    id BIGINT,
    participants VARCHAR,
    streams VARCHAR,
    channelId BIGINT,
    region VARCHAR
);

create table Stream (
    id BIGINT,
    quality VARCHAR,
    fps INT,
    author BIGINT,
    channelId BIGINT,
    participants VARCHAR,
    region VARCHAR
);