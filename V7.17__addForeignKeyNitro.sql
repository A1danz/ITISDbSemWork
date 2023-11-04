ALTER TABLE nitro 
  ADD COLUMN user_id INTEGER REFERENCES usr(id) NOT NULL;

ALTER TABLE nitro
  DROP CONSTRAINT avatar_not_null_check,
  DROP COLUMN avatar,
  ADD COLUMN avatar_id INTEGER REFERENCES avatar(id) NOT NULL;