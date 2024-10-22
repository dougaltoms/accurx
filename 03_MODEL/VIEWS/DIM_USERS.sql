create or replace view dim_users
comment = 'Dimension: User details'
as
select distinct
user_id
, organisation_id
, created_at
, first_name
, last_name
, email
, is_admin
, role
, status
from "02_CLEAN".USERS_NORMALISED
order by 1;