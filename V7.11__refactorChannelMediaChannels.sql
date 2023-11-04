ALTER TABLE ChannelMediaChannels 
  ADD COLUMN mediachannel_id INTEGER REFERENCES mediachannel(id);

ALTER TABLE ChannelMediaChannels 
  ADD CONSTRAINT channel_media_channels_mediachannel_id_not_null_check CHECK (mediachannel_id IS NOT NULL),
  ADD CONSTRAINT channel_media_channels_added_user_not_null_check CHECK (added_user IS NOT NULL),
  ADD CONSTRAINT channel_media_channels_channel_id_not_null_check CHECK (channel_id IS NOT NULL),
  ADD CONSTRAINT channel_media_channels_added_date_not_null_check CHECK (added_date IS NOT NULL);