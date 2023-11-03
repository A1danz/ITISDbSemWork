ALTER TABLE Nitro ADD CONSTRAINT nitro_name_length CHECK (LENGTH (name) >= 4),
ADD CONSTRAINT nitro_price CHECK (price > 0);

ALTER TABLE Device ADD CONSTRAINT device_name_length CHECK (LENGTH (name) >= 4),
ADD CONSTRAINT device_position_length CHECK (LENGTH (name) >= 0);

ALTER TABLE EmojiCategory ADD CONSTRAINT emoji_category_name_length CHECK (LENGTH (name) >= 4);

ALTER TABLE RegionType ADD CONSTRAINT region_type_name_length CHECK (LENGTH (name) >= 4);