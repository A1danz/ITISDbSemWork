ALTER TABLE file
    ADD CONSTRAINT file_author_foreign_key FOREIGN KEY (author) REFERENCES usr(id);