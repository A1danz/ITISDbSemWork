create or replace view v_message as
	select id,
	text,
	timesent,
	'***' as channelid,
	'***' as sender
from message;