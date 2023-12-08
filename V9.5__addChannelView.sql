create or replace view v_channel as 
select id,
 md5(servername) as servername,
 createddate,
 '***' as creator,
 avatar_id
from channel;