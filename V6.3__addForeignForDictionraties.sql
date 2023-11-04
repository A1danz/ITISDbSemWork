ALTER TABLE activity
    ADD CONSTRAINT genre_foreign_key FOREIGN KEY (genre) REFERENCES activitygenre(id);

ALTER TABLE device
    ADD CONSTRAINT device_type_foreign_key FOREIGN KEY (device_type) REFERENCES devicetype(id),
    ADD CONSTRAINT clien_type_foreign_key FOREIGN KEY (client_type) REFERENCES clienttype(id);


ALTER TABLE emoji
    ADD CONSTRAINT category_foreign_key FOREIGN KEY (category_type) REFERENCES emojicategory(id);


ALTER TABLE file
    ADD CONSTRAINT file_type_foreign_key FOREIGN KEY (filetype) REFERENCES filetype(id);


ALTER TABLE stream
    ADD CONSTRAINT quality_foreign_key FOREIGN KEY (quality) REFERENCES quality(id),
    ADD CONSTRAINT fps_foreign_key FOREIGN KEY (fps) REFERENCES fpscount(id),
    ADD CONSTRAINT region_foreign_key FOREIGN KEY (region) REFERENCES regiontype(id);


ALTER TABLE usr
    ADD CONSTRAINT region_foreign_key FOREIGN KEY (region) REFERENCES regiotype(id);


ALTER TABLE calls
    ADD CONSTRAINT region_foreign_key FOREIGN KEY (region) REFERENCES regiontype(id);

