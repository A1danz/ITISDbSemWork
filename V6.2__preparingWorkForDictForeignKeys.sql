ALTER TABLE activity
    DROP COLUMN genre,
    DROP column region,
    ADD column genre BIGINT,
    ADD column region BIGINT;

ALTER TABLE device
    DROP column type,
    DROP column type_client,
    ADD column device_type BIGINT,
    ADD column client_type BIGINT;


ALTER TABLE emoji
    DROP column category,
    ADD column category_type BIGINT;


ALTER TABLE file
    DROP column filetype,
    ADD column filetype BIGINT;


ALTER TABLE stream
    DROP column quality,
    DROP column fps,
    DROP column region,
    ADD column quality BIGINT,
    ADD column fps BIGINT,
    ADD column region BIGINT;


ALTER TABLE usr
    DROP column region,
    ADD column region BIGINT;


ALTER TABLE calls
    DROP column region,
    ADD column region BIGINT;