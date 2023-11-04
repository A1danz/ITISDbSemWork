ALTER TABLE nitro DROP CONSTRAINT nitro_name_length;

ALTER TABLE nitro ADD CONSTRAINT nitro_name_unique UNIQUE (name);

ALTER TABLE nitro RENAME COLUMN ended_data TO ended_date;

ALTER TABLE nitro ADD CONSTRAINT name_not_null_check CHECK(name IS NOT NULL),
    ADD CONSTRAINT avatar_not_null_check CHECK(avatar IS NOT NULL),
    ADD CONSTRAINT price_not_null_check CHECK(price IS NOT NULL),
    ADD CONSTRAINT started_date_not_null_check CHECK(started_date IS NOT NULL),
    ADD CONSTRAINT ended_date_not_null_check CHECK(ended_date IS NOT NULL);

ALTER TABLE nitro ADD CONSTRAINT nitro_name_length_check CHECK(LENGTH(name) >= 2);
    