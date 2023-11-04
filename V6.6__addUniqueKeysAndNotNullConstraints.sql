-- ALTER TABLE textchannel DROP CONSTRAINT participants_length_check;
-- ALTER TABLE textchannel DROP CONSTRAINT max_participants_check;
-- ALTER TABLE textchannel DROP CONSTRAINT unseen_messages_check;

ALTER TABLE Quality ADD CONSTRAINT quality_not_null_check CHECK (quality IS NOT NULL),
    ADD CONSTRAINT quality_unique UNIQUE(quality);

ALTER TABLE ActivityGenre ADD CONSTRAINT name_not_null_check CHECK (name IS NOT NULl),
    ADD CONSTRAINT activity_genre_name_unique UNIQUE(name);