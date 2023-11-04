ALTER TABLE ChannelBots
  DROP COLUMN added_user;

ALTER TABLE ChannelBots 
  ADD CONSTRAINT channel_bots_bot_id_not_null_check CHECK (bot_id IS NOT NULL),
  ADD CONSTRAINT channel_bots_user_id_not_null_check CHECK (user_id IS NOT NULL),
  ADD CONSTRAINT channel_bots_channel_id_not_null_check CHECK (channel_id IS NOT NULL),
  ADD CONSTRAINT channel_bots_added_date_not_null_check CHECK (added_date IS NOT NULL);