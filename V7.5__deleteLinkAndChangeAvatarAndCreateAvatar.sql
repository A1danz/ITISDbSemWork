ALTER TABLE
    bot DROP CONSTRAINT bot_link_not_null_check;
ALTER TABLE
    bot DROP CONSTRAINT bot_link_unique;
ALTER TABLE
    bot DROP COLUMN link;
    
CREATE TABLE avatar (
    id SERIAL PRIMARY KEY,
    url TEXT NOT NULL
);


ALTER TABLE
    bot
ADD
    COLUMN avatar_id INTEGER REFERENCES avatar(id);
ALTER TABLE
    bot DROP COLUMN avatar;