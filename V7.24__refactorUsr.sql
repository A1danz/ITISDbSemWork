ALTER TABLE usr
  DROP CONSTRAINT avatar_not_null_check,
  DROP COLUMN avatar,
  ADD COLUMN avatar_id INTEGER REFERENCES avatar(id) NOT NULL;