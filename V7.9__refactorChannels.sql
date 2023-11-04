ALTER TABLE Channel DROP COLUMN sender;

ALTER TABLE Channel 
  DROP CONSTRAINT server_avatar_length,
  DROP COLUMN serveravatar;

ALTER TABLE Channel 
  ADD COLUMN avatar_id INTEGER REFERENCES avatar(id);

ALTER TABLE Channel
    ADD CONSTRAINT user_foreign_key FOREIGN KEY (creator) REFERENCES usr(id);

ALTER TABLE Channel 
  ADD CONSTRAINT channel_name_not_null_check CHECK (servername IS NOT NULL);