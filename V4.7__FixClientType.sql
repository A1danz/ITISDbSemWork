alter table ClientType
drop constraint check_client_type_name;

alter table ClientType add constraint check_client_type_name check (length (name) >= 2);