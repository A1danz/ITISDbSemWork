ALTER TABLE
    bot
ADD
    CONSTRAINT bot_description_unique UNIQUE(description),
ADD
    CONSTRAINT bot_avatar_unique UNIQUE(avatar),
ADD
    CONSTRAINT bot_link_unique UNIQUE(link);
ALTER TABLE
    bot
ADD
    COLUMN user_id INTEGER REFERENCES usr(id);
ALTER Table
    bot
Add
    CONSTRAINT bot_user_id_check_not_null CHECK(user_id IS NOT NULL);