ALTER TABLE message
    add column sender BIGINT NOT NULL REFERENCES usr(id);