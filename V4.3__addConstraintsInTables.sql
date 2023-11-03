ALTER TABLE Usr
    ADD CONSTRAINT login_length_check CHECK (LENGTH(login) >= 4),
    ADD CONSTRAINT password_length_check CHECK (LENGTH(password) >= 4),
    ADD CONSTRAINT email_length_check CHECK (LENGTH(email) > = 4),
    ADD CONSTRAINT phone_number_check CHECK (phone_number >= 4),
    ADD CONSTRAINT name_length_check CHECK (LENGTH(name) >= 4);

ALTER TABLE Emoji
    ADD CONSTRAINT category_length_check CHECK (LENGTH(category) > 0),
    ADD CONSTRAINT name_length_check CHECK (LENGTH(name) >= 4),
    ADD CONSTRAINT abbreviation_length_check CHECK (LENGTH(abbreviation) > 0),
    ADD CONSTRAINT description_length_check CHECK (LENGTH(description) > 0);

ALTER TABLE TextChannel
    ADD CONSTRAINT participants_length_check CHECK (LENGTH(participants) > 0),
    ADD CONSTRAINT max_participants_check CHECK (max_participants > 0),
    ADD CONSTRAINT unseen_messages_check CHECK (max_participants > 0);

ALTER TABLE TextMessage
    ADD CONSTRAINT message_text_length_check CHECK (LENGTH(message_text) > 0);

ALTER TABLE Quality
    ADD CONSTRAINT quality_length_check CHECK (LENGTH(quality) > 0);

ALTER TABLE ActivityGenre
    ADD CONSTRAINT name_length_check CHECK (LENGTH(name) >= 4);
