create or replace view user_friends_view as
	with first_column_friends as (
		select first_user, second_user from friends
	), second_column_friends as (
		select second_user, first_user from friends
	), user_friends_id as (
		select first_user as user_id, second_user as friend_id
		from first_column_friends union select * from second_column_friends
		order by user_id
	), user_friends as (
		select user_id, usr.name as friend_name, LEFT(usr.phone_number, 8) || REPEAT('*', LENGTH(usr.phone_number) - 8) as friend_phone
		from user_friends_id join usr on friend_id = usr.id
	)
select *
from user_friends
order by user_id;