ALTER TABLE VoiceChannel
    ADD CONSTRAINT parcipants_check CHECK(length(participants) > 0),
    ADD CONSTRAINT maxparicipants_check CHECK(maxparicipants > 0);

ALTER TABLE File
    ADD CONSTRAINT link_check CHECK(length(link) > 0),
    ADD CONSTRAINT weightkb_check CHECK(weightkb BETWEEN 0 AND 10240),
    ADD CONSTRAINT filename_check CHECK(length(filename) > 0);

ALTER TABLE Calls
    ADD CONSTRAINT parcipants_check CHECK(length(parcipants) > 0);

ALTER TABLE Stream
    ADD CONSTRAINT participants_check CHECK(lenth(participants) > 0);

ALTER TABLE DeviceType
    ADD CONSTRAINT name_check CHECK(length(name) >= 4);

ALTER TABLE FpsCount
    ADD CONSTRAINT fps_check CHECK(length(fps) >= 2);