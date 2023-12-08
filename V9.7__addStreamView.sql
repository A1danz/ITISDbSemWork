create or replace view v_streams as
       select id as stream_id,
       author as streamer_id,
       ('*****') as server_name
       from stream
       order by stream_id;