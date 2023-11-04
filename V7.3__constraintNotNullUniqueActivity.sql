ALTER TABLE
    activity
ADD
    CONSTRAINT activity_name_unique UNIQUE (name),
ADD
    CONSTRAINT activity_name_not_null_check CHECK (name IS NOT NULL),
ADD
    CONSTRAINT activity_webapplink_unique UNIQUE (webapplink),
ADD
    CONSTRAINT activity_webapplink_not_null_check CHECK (webapplink IS NOT NULL),
ADD
    CONSTRAINT activity_genre_unique UNIQUE (genre),
ADD
    CONSTRAINT activity_genre_not_null_check CHECK (genre IS NOT NULL),
ADD
    CONSTRAINT activity_description_unique UNIQUE (description),
ADD
    CONSTRAINT activity_description_not_null_check CHECK (description IS NOT NULL),
ADD
    CONSTRAINT activity_region_unique UNIQUE (region),
ADD
    CONSTRAINT activity_region_not_null_check CHECK (region IS NOT NULL);