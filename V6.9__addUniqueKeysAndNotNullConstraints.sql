ALTER TABLE device DROP CONSTRAINT device_name_length;

ALTER TABLE device
    ADD CONSTRAINT device_name_not_null_check CHECK(name IS NOT NULL),
    ADD CONSTRAINT device_type_not_null_check CHECK(device_type IS NOT NULL),
    ADD CONSTRAINT device_type_client_not_null_check CHECK(client_type IS NOT NULL),
    ADD CONSTRAINT device_position_not_null_check CHECK(position IS NOT NULL),
    ADD CONSTRAINT device_time_not_null_check CHECK(time IS NOT NULL);

ALTER TABLE device ADD CONSTRAINT device_name_length_check CHECK(LENGTH(name) >= 3);

ALTER TABLE devicetype DROP CONSTRAINT name_check;

ALTER TABLE devicetype ADD CONSTRAINT devicetype_name_not_null_check CHECK(name IS NOT NULL);

ALTER TABLE devicetype ADD CONSTRAINT devicetype_name_unique UNIQUE(name);

ALTER TABLE devicetype ADD CONSTRAINT devicetype_name_length_check CHECK(LENGTH(name) >= 3);



