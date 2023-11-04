ALTER TABLE message
    ADD CONSTRAINT message_channelid_2_foreign_key FOREIGN KEY (channelid) REFERENCES personalchannel(channelid);