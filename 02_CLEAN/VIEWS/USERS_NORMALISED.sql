reate or replace view users_normalised
as
select export_date
, file_loaded_day
, file_row_no
, payload['applicationUserId']::varchar as application_user_id
, payload['createdAt']::date as created_at
, payload['email']::varchar as email
, payload['firstName']::varchar as first_name
, payload['lastName']::varchar as last_name
, payload['isAdmin']::boolean as is_admin
, payload['organisationId']::int as organisation_id
, payload['role']::varchar as role
, payload['status']::varchar as status
, payload['userId']::int as user_id
from "01_RAW".user;