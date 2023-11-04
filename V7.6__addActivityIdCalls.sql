ALTER TABLE calls ADD COLUMN activity_id INT;
ALTER TABLE calls ADD CONSTRAINT fk_activity_id FOREIGN KEY (activity_id) REFERENCES activity(id);