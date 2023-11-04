ALTER TABLE message
    ADD CONSTRAINT message_channelid_foreign_key FOREIGN KEY (channelid) REFERENCES textchannel(id);