ALTER TABLE callstreams
ADD CONSTRAINT callstreams_call_id_nn CHECK (call_id IS NOT NULL),
ADD CONSTRAINT callstreams_stream_id_nn CHECK (stream_id IS NOT NULL);