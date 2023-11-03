alter table Sticker add constraint check_sticker_name check (length (name) >= 4),
add constraint check_sticker_author check (length (author) >= 4),
add constraint check_sticker_short_name check (length (name) >= 4),
add constraint check_sticker_file check (length (file) > 0);

alter table MediaChannel add constraint check_media_channel_name check (length (name) >= 4),
add constraint check_media_channel_desc check (length (description) > 0);

alter table Bot add constraint check_bot_name check (length (name) >= 4),
add constraint check_bot_avatar check (length (avatar) > 0),
add constraint check_bot_desc check (length (description) > 0),
add constraint check_bot_link check (length (link) > 0);

alter table ClientType add constraint check_client_type_name check (length (name) >= 4);