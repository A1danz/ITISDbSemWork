ALTER TABLE sticker ADD CONSTRAINT sticker_name_not_null_check CHECK(name IS NOT NULL),
    ADD CONSTRAINT sticker_author_not_null_check CHECK(author IS NOT NULL),
    ADD CONSTRAINT sticker_shortname_not_null_check CHECK(shortname IS NOT NULL),
    ADD CONSTRAINT sticker_file_not_null_check CHECK(file IS NOT NULL);

ALTER TABLE sticker ADD CONSTRAINT stiker_name_unique UNIQUE(name);

ALTER TABLE mediachannel ADD CONSTRAINT mediachannel_name_not_null_check CHECK(name IS NOT NULL),
    ADD CONSTRAINT mediachannel_description_not_null_check CHECK(description IS NOT NULL),
    ADD CONSTRAINT mediachannel_accesslevel_not_null_check CHECK(accesslevel IS NOT NULL);

ALTER TABLE bot ADD CONSTRAINT bot_name_not_null_check CHECK(name IS NOT NULL),
    ADD CONSTRAINT bot_description_not_null_check CHECK(description IS NOT NULL),
    ADD CONSTRAINT bot_avatar_not_null_check CHECK(avatar IS NOT NULL),
    ADD CONSTRAINT bot_link_not_null_check CHECK(link IS NOT NULL);

ALTER TABLE bot ADD CONSTRAINT bot_name_unique UNIQUE(name);

ALTER TABLE clienttype ADD CONSTRAINT clienttype_name_unique UNIQUE(name);

ALTER TABLE clienttype ADD CONSTRAINT clienttype_name_not_null_check CHECK(name IS NOT NULL);

