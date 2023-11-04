ALTER TABLE personalchannel
  DROP COLUMN firstUser,
  DROP COLUMN secondUser,
  ADD COLUMN friends_id INTEGER REFERENCES friends(id);