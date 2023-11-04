ALTER TABLE voicechannel ADD CONSTRAINT voice_channel_max_partipicants_not_null_check CHECK(maxpartipicants IS NOT NULL);

ALTER TABLE filetype ADD CONSTRAINT filetype_name_not_null_check CHECK(name IS NOT NULL);

ALTER TABLE filetype ADD CONSTRAINT filetype_name_unique UNIQUE(name);

ALTER TABLE file ADD CONSTRAINT file_filename_not_null_check CHECK(filename IS NOT NULL),
    ADD CONSTRAINT file_adddate_not_null_check CHECK(adddate IS NOT NULL),
    ADD CONSTRAINT file_author_not_null_check CHECK(author IS NOT NULL),
    ADD CONSTRAINT file_link_not_null_check CHECK(link IS NOT NULL),
    ADD CONSTRAINT file_weightkb_not_null_check CHECK(weightkb IS NOT NULL),
    ADD CONSTRAINT file_filetype_not_null_check CHECK(filetype IS NOT NULL);

ALTER TABLE calls ADD CONSTRAINT calls_channelid_not_null_check CHECK(channelid IS NOT NULL),
    ADD CONSTRAINT calls_region_not_null_check CHECK(region IS NOT NULL);

ALTER TABLE stream ADD CONSTRAINT stream_channelid_not_null_check CHECK(channelid IS NOT NULL),
    ADD CONSTRAINT stream_author_not_null_check CHECK(author IS NOT NULL),
    ADD CONSTRAINT stream_quality_not_null_check CHECK(quality IS NOT NULL),
    ADD CONSTRAINT stream_fps_not_null_check CHECK(fps IS NOT NULL),
    ADD CONSTRAINT stream_region_not_null_check CHECK(region IS NOT NULL);

ALTER TABLE FpsCount ADD CONSTRAINT fps_not_null_check CHECK(fps IS NOT NULL);

ALTER TABLE FpsCount ADD CONSTRAINT fps_unique UNIQUE(fps);


