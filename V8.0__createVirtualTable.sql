create or replace view v_usr as 
select id,
 md5(email) as email,
 '*****' as name,
 nitro_access,
 region,
 md5(phone_number) as phone_number
from usr;