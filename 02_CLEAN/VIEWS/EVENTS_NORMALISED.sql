create or replace view events_normalised
as
select event_name
, event_timestamp
, payload['countAttachment']::int as count_attachment
, payload['eventUserType']::varchar as event_user_type
, payload['eventVersion']::int as event_version
, payload['hasError']::boolean as has_error
, payload['messageId']::varchar as message_id
, payload['messageLength']::int as message_length
, payload['messageType']::varchar as message_type
, payload['organisationId']::int as organisation_id
, payload['productOrigin']::varchar as product_origin
, payload['sourceType']::varchar as source_type
, payload['userId']::int as user_id
from "01_RAW".event;