ALTER TABLE stream
  ADD CONSTRAINT fk_author_stream FOREIGN KEY (author) REFERENCES usr(id),
  ADD CONSTRAINT fk_channelid_1_stream FOREIGN KEY (channelid) REFERENCES personalchannel(channelid),
  ADD CONSTRAINT fk_channelid_2_stream FOREIGN KEY (channelid) REFERENCES voicechannel(id);
