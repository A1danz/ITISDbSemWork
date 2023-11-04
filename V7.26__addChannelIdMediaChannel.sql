ALTER table mediachannel
  ADD COLUMN channel_id INTEGER,
  ADD CONSTRAINT fk_channel_id_1 FOREIGN KEY (channel_id) REFERENCES textchannel(id),
  ADD CONSTRAINT fk_channel_id_2 FOREIGN KEY (channel_id) REFERENCES voicechannel(id);