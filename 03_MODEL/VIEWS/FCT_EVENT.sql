create or replace view fct_event
comment = 'Fact: User generated events'
as
select
message_id
, organisation_id
, user_id
, event_name
, event_timestamp
, event_version
, count_attachment
, has_error
from "02_CLEAN".EVENTS_NORMALISED
order by event_timestamp asc
;