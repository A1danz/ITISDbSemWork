ALTER TABLE sticker
  ADD CONSTRAINT fk_author_sticker FOREIGN KEY (author) REFERENCES usr(id);