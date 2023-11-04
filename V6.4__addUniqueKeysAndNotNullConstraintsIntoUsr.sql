ALTER TABLE usr RENAME COLUMN e_mail TO email;

ALTER TABLE usr DROP CONSTRAINT login_length_check;
ALTER TABLE usr DROP CONSTRAINT email_length_check;
ALTER TABLE usr DROP CONSTRAINT phone_number_length;
ALTER TABLE usr DROP CONSTRAINT name_length_check;

ALTER TABLE usr ADD CONSTRAINT login_unique UNIQUE (login);
         

ALTER TABLE usr
    ADD CONSTRAINT login_not_null_check CHECK(login IS NOT NULL),
    ADD CONSTRAINT password_not_null_check CHECK(password IS NOT NULL),
    ADD CONSTRAINT email_not_null_check CHECK(email IS NOT NULL),
    ADD CONSTRAINT phone_number_not_null_check CHECK(phone_number IS NOT NULL),
    ADD CONSTRAINT name_not_null_check CHECK(name IS NOT NULL),
    ADD CONSTRAINT avatar_not_null_check CHECK(avatar IS NOT NULL),
    ADD CONSTRAINT nitro_access_not_null_check CHECK(nitro_access IS NOT NULL),
    ADD CONSTRAINT registration_date_not_null_check CHECK(registration_date IS NOT NULL),
    ADD CONSTRAINT super_user_null_check CHECK(super_user IS NOT NULL);
--     ADD CONSTRAINT region_null_check CHECK(region IS NOT NULL);

ALTER TABLE usr
    ADD CONSTRAINT login_length_check CHECK(LENGTH(login) >= 4),
    ADD CONSTRAINT email_length_check CHECK(LENGTH(email) >= 4),
    ADD CONSTRAINT phone_number_check CHECK(LENGTH(phone_number) >= 4),
    ADD CONSTRAINT name_length_check CHECK(LENGTH(name) >= 2);
