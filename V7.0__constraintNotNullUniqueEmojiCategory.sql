ALTER TABLE emojicategory ADD CONSTRAINT emojicategory_name_unique UNIQUE (name);

ALTER TABLE emojicategory ADD CONSTRAINT emojicategory_name_not_null_check CHECK (name IS NOT NULL);