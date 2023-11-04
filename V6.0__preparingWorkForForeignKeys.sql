ALTER TABLE calls
    DROP column participants,
    DROP column streams;


ALTER TABLE channel
    DROP column servermembers,
    DROP column serverchannels,
    ADD COLUMN createdDate DATE,
    ADD COLUMN creator BIGINT,
    ADD COLUMN sender BIGINT;


ALTER TABLE message
    DROP COLUMN sender,
    DROP COLUMN attachments;


ALTER TABLE personalchannel
    ADD COLUMN firstUser BIGINT,
    ADD COLUMN secondUser BIGINT;


ALTER TABLE sticker
    DROP COLUMN author,
    ADD COLUMN author BIGINT;

ALTER TABLE stream
    DROP COLUMN participants;


ALTER TABLE textChannel
    DROP COLUMN participants,
    DROP COLUMN unseen_messages;


DROP TABLE textmessage;


ALTER TABLE voicechannel
    DROP COLUMN participants;