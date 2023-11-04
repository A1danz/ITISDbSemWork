ALTER TABLE regiontype ADD CONSTRAINT regiontype_name_unique UNIQUE (name);

ALTER TABLE regiontype ADD CONSTRAINT regiontype_name_not_null_check CHECK (name IS NOT NULL);