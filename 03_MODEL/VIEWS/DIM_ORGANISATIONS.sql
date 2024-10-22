create or replace view dim_organisations
comment = 'Dimension: Organisation details'
as
select distinct
organisation_id
from "02_CLEAN".USERS_NORMALISED
order by 1;