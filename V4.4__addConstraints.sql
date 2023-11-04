ALTER TABLE Channel ADD CONSTRAINT server_name_length CHECK (LENGTH (servername) > 4),
ADD CONSTRAINT server_avatar_length CHECK (LENGTH (serveravatar) > 0),
ADD CONSTRAINT server_members_positive CHECK (servermembers > 0);

ALTER TABLE Role ADD CONSTRAINT role_name_length CHECK (LENGTH (name) > 4),
ADD CONSTRAINT role_description_length CHECK (LENGTH (description) > 4),
ADD CONSTRAINT role_avatar_length CHECK (LENGTH (avatar) > 0);

ALTER TABLE Message ADD CONSTRAINT message_text_length CHECK (LENGTH (text) > 4),
ADD CONSTRAINT message_attachments_length CHECK (LENGTH (attachments) > 4),
ADD CONSTRAINT message_sender_length CHECK (LENGTH (sender) > 4);

ALTER TABLE Activity ADD CONSTRAINT activity_name_length CHECK (LENGTH (name) > 4),
ADD CONSTRAINT activity_genre_length CHECK (LENGTH (genre) > 4),
ADD CONSTRAINT activity_description_length CHECK (LENGTH (description) > 4),
ADD CONSTRAINT activity_region_length CHECK (LENGTH (region) > 4),
ADD CONSTRAINT activity_webapplink_length CHECK (LENGTH (webapplink) > 0);

ALTER TABLE FileType ADD CONSTRAINT file_type_name_length CHECK (LENGTH (name) >= 4);