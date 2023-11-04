ALTER TABLE friends
    ADD CONSTRAINT friends_1_foreign_key FOREIGN KEY (first_user) REFERENCES usr(id),
    ADD CONSTRAINT friends_2_foreign_key FOREIGN KEY (second_user) REFERENCES usr(id);