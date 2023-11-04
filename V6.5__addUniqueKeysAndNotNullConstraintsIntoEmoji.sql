ALTER TABLE emoji DROP CONSTRAINT name_length_check;

ALTER TABLE emoji ADD CONSTRAINT name_unique UNIQUE (name);

ALTER TABLE emoji ADD CONSTRAINT category_type_null_check CHECK(category_type IS NOT NULL),
    ADD CONSTRAINT name_not_null_check CHECK(name IS NOT NULL),
    ADD CONSTRAINT abbreviation_not_null_check CHECK(abbreviation IS NOT NULL),
    ADD CONSTRAINT description_not_null_check CHECK(description IS NOT NULL);

ALTER TABLE emoji ADD CONSTRAINT name_length_check CHECK(LENGTH(name) >= 2);