ALTER TABLE friends
    ADD CONSTRAINT first_user_not_null_check CHECK(first_user IS NOT NULL),
    ADD CONSTRAINT second_user_not_null_check CHECK(second_user IS NOT NULL),
    ADD CONSTRAINT added_date_not_null_check CHECK(added_date IS NOT NULL);