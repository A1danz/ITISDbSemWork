ALTER TABLE calls
  ADD CONSTRAINT calls_channelid_foreign_key FOREIGN KEY (channelid) REFERENCES personalchannel(channelid);